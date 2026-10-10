import argparse
import collections
import json
import os
import re
import sys
import urllib.error
import urllib.parse
import urllib.request

import yaml

UPSTREAM = "Zitann/HarmonyOS-Haps"
UPSTREAM_BRANCH = "main"
UPSTREAM_YAML = f"https://raw.githubusercontent.com/{UPSTREAM}/{UPSTREAM_BRANCH}/apps.yaml"

API = "https://api.github.com"
GITHUB_WEB = "https://github.com"

# 判定安装包时保留的资产扩展名
PACKAGE_EXTENSIONS = (".hap", ".app")

# 上传到 Release 的源码快照，与安装包同处一个 Release 时用不到
ARCHIVE_ASSET_REGEX = re.compile(r"\.(?:tar\.gz|tar\.bz2|tgz|tbz2|zip|zipx|7z|tar\.xz|tar\.zst)$", re.IGNORECASE)
SOURCE_ASSET_WORDS = re.compile(r"(?:source|src|code)[-_.]", re.IGNORECASE)

# 安装包文件名里的构建类型标识，越少越可能是常规产物
NOISY_BUILD_WORDS = re.compile(r"(?:^|[-_.])(debug|api\d*|beta|alpha|preview|test|dev)(?=[-_.]|$)", re.IGNORECASE)

# 每个仓库在文档里的分类，Casks/README.md 按它分组
CATEGORY_ORDER = ["一次开发，多端部署", "鸿蒙手机/平板", "鸿蒙电脑"]

# 允许反复重试的 HTTP 状态码
RETRYABLE_STATUS = (403, 429, 500, 502, 503)

DESC_MAX_LENGTH = 80


class ApiError(Exception):
    pass


class RateLimitError(ApiError):
    """额度用尽。这种失败不能继续，否则会把已有 cask 当成上游已删除而清掉。"""

    pass


class Client:
    """带重试的 GitHub REST 客户端。

    匿名调用每个 IP 每小时只有 60 次，工作流里传 GITHUB_TOKEN 时上限是 1000 次。
    """

    def __init__(self, token=None, timeout=30, retries=4):
        self.timeout = timeout
        self.retries = retries
        self.headers = {
            "User-Agent": "harmonybrew-haps-to-casks",
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
        }
        if token:
            self.headers["Authorization"] = f"Bearer {token}"
        self.remaining = None

    def get_json(self, url):
        for attempt in range(self.retries + 1):
            request = urllib.request.Request(url, headers=self.headers)
            try:
                with urllib.request.urlopen(request, timeout=self.timeout) as response:
                    self.record_rate_limit(response.headers)
                    return json.loads(response.read().decode("utf-8"))
            except urllib.error.HTTPError as error:
                self.record_rate_limit(error.headers)
                if error.code == 404:
                    return None
                if error.code in (403, 429):
                    raise RateLimitError(f"{error.code} {url}") from None
                if error.code not in RETRYABLE_STATUS or attempt == self.retries:
                    detail = error.read().decode("utf-8", "replace")[:200]
                    raise ApiError(f"{error.code} {url} {detail}") from None
            except OSError as error:
                if attempt == self.retries:
                    raise ApiError(f"{error} {url}") from None
            self.sleep_after_retry(attempt)
        raise ApiError(url)

    def get_text(self, url):
        """取纯文本内容，用于 raw.githubusercontent.com 这类不走 API 的地址。"""
        headers = {"User-Agent": self.headers["User-Agent"]}
        request = urllib.request.Request(url, headers=headers)
        with urllib.request.urlopen(request, timeout=self.timeout) as response:
            return response.read().decode("utf-8")

    def record_rate_limit(self, headers):
        if headers is None:
            return
        remaining = headers.get("X-RateLimit-Remaining")
        if remaining is not None and remaining.isdigit():
            self.remaining = int(remaining)

    def sleep_after_retry(self, attempt):
        import time

        time.sleep(min(2 ** attempt, 30))

    def best_release(self, repo):
        """返回仓库里作为数据来源的那个 Release，取不到时返回 None。

        `releases/latest` 会跳过预发布，很多鸿蒙应用只发预发布，所以先读列表再挑选。
        """
        releases = self.get_json(f"{API}/repos/{repo}/releases?per_page=100")
        if not releases:
            return None
        candidates = [release for release in releases if not release.get("draft")]
        if not candidates:
            return None
        return max(candidates, key=release_sort_key)


def release_sort_key(release):
    """候选比较键：稳定版优先，其次创建时间更晚的优先。"""
    return (0 if not release.get("prerelease") else 1, release.get("created_at") or "")


def fetch_upstream_apps(client):
    """读取上游 apps.yaml，返回 (分类, 条目) 列表。"""
    try:
        text = client.get_text(UPSTREAM_YAML)
    except OSError as error:
        raise ApiError(f"{error} {UPSTREAM_YAML}") from None
    return entries_from_payload(yaml.safe_load(text))


def entries_from_payload(payload):
    categories = (payload or {}).get("categories") or {}
    return [(category, app) for category, apps in categories.items() for app in apps or []]


def github_slug(url):
    """从 GitHub 链接中取出 owner/repo，链接指向别处时返回 None。"""
    if not url:
        return None
    match = re.match(r"https?://github\.com/([^/\s#?]+)/([^/\s#?]+)", url)
    if not match:
        return None
    return f"{match.group(1)}/{re.sub(r'[.]git$', '', match.group(2))}"


def asset_extension(name):
    lowered = name.lower()
    for extension in PACKAGE_EXTENSIONS:
        if lowered.endswith(extension):
            return extension
    return None


def is_archive(asset):
    """源码快照不是安装包。"""
    name = asset["name"]
    if asset_extension(name):
        return False
    if "源码" in name:
        return True
    return bool(ARCHIVE_ASSET_REGEX.search(name)) or bool(SOURCE_ASSET_WORDS.search(name))


def digest_of(asset):
    """资产自带的 sha256。旧资产没有 digest 字段，取不到时返回 None。"""
    digest = asset.get("digest")
    if not digest:
        return None
    if digest.startswith("sha256:"):
        return digest[len("sha256:"):]
    return None


def select_package_asset(assets):
    """从 Release 资产里挑出用于安装的那个包。"""
    packages = [(asset, asset_extension(asset["name"])) for asset in assets]
    packages = [(asset, extension) for asset, extension in packages if extension]
    if not packages:
        return None

    # .app 是整包，同一次 Release 里有它就不必再看 .hap
    apps = [(asset, extension) for asset, extension in packages if extension == ".app"]
    if apps:
        return min(apps, key=lambda pair: asset_rank(pair[0]))[0]

    return min(packages, key=lambda pair: asset_rank(pair[0]))[0]


def asset_rank(asset):
    """排序键：有摘要的优先，其次构建类型标识少、下载次数多、名字短。"""
    name = asset["name"]
    penalty = 0 if digest_of(asset) else 1
    if "unsigned" in name.lower():
        penalty += 1
    if NOISY_BUILD_WORDS.search(name):
        penalty += 1
    prefix = NOISY_BUILD_WORDS.split(name)[0]
    return (penalty, -int(asset.get("download_count") or 0), len(prefix), name.lower())


VERSION_RUN = re.compile(r"\d+(?:[-_.]\d+)+")


def version_of(release):
    """取版本号。优先用 tag，tag 里没有版本串时再从安装包文件名里取。

    返回版本串在原文里的形式（分隔符保持原样），这样它才能原样回填进下载地址。
    """
    for text in [release.get("tag_name") or ""] + [asset["name"] for asset in release.get("assets") or []]:
        match = VERSION_RUN.search(text)
        if match:
            return match.group(0)
    return None


def versioned_segment(text, version):
    """把 text 里那一处版本串换成字面量 #{version}，两侧其余部分做百分号编码。

    找不到边界正确的版本串时返回 None。分隔符如 `+`、`-` 留在两侧，
    会正常编码，因此 `v2025.8.3+2` 这样的 tag 也能对上。
    """
    pattern = re.compile(rf"(?<![0-9.]){re.escape(version)}(?![0-9]|\.[0-9])")
    match = pattern.search(text)
    if match is None:
        return None
    prefix = urllib.parse.quote(text[: match.start()], safe="")
    suffix = urllib.parse.quote(text[match.end() :], safe="")
    return f"{prefix}#{{version}}{suffix}"


def versioned_url(slug, tag, asset_name, version):
    """下载地址里带上 #{version}，让 cask 在版本更新时能自己轮换地址。

    tag 与资产名里都找不到该版本串时返回 None，调用方改用 :latest 形式。
    版本串在 tag 时就回填到 tag 那一段，否则回填到资产名那一段。
    """
    if not version:
        return None
    tag_segment = versioned_segment(tag, version)
    asset_segment = versioned_segment(asset_name, version)
    asset_literal = urllib.parse.quote(asset_name, safe="")
    tag_literal = urllib.parse.quote(tag, safe="")
    if tag_segment is not None:
        return f"{GITHUB_WEB}/{slug}/releases/download/{tag_segment}/{asset_literal}"
    if asset_segment is not None:
        return f"{GITHUB_WEB}/{slug}/releases/download/{tag_literal}/{asset_segment}"
    return None


def token_for(repo_entry):
    token = repo_entry.lower()
    token = re.sub(r"[^a-z0-9]+", "-", token)
    token = re.sub(r"-{2,}", "-", token).strip("-")
    return token


def assign_tokens(records):
    """token 取仓库名，重名时给所有同名条目加上各自的 owner 前缀。"""
    counts = collections.Counter(record["token"] for record in records)
    for record in records:
        if counts[record["token"]] > 1:
            record["token"] = token_for(f"{record['owner']}-{record['repo_name']}")
    assigned = collections.Counter(record["token"] for record in records)
    for record in records:
        if assigned[record["token"]] > 1:
            record["token"] = f"{record['token']}-{record['token_index']}"


def desc_of(app):
    desc = (app.get("desc") or "").strip().replace('"', "")
    desc = re.sub(r"\s+", " ", desc)
    desc = desc.rstrip("。.，,、")
    if len(desc) > DESC_MAX_LENGTH:
        desc = desc[: DESC_MAX_LENGTH - 1] + "…"
    return desc


def name_of(app, record):
    name = (app.get("name") or "").strip()
    # 全角括号带进 cask 的 name 没有意义，换成半角
    name = name.replace("（", " (").replace("）", ")")
    return name or record["token"]


def build_record(category, app, release):
    """把一个 apps.yaml 条目与它的 Release 转成 cask 记录。"""
    homepage_url = app.get("url") or ""
    download_url = app.get("link") or ""
    homepage_slug = github_slug(homepage_url) or github_slug(download_url)
    download_slug = download_url and github_slug(download_url)
    if homepage_slug is None or (download_url and download_slug is None):
        return None, "下载页不在 GitHub 上"
    slug = download_slug or homepage_slug

    assets = [asset for asset in release.get("assets") or [] if not is_archive(asset)]
    package = select_package_asset(assets)
    if package is None:
        return None, "Release 里没有 .hap 或 .app 资产"

    version = version_of(release)
    digest = digest_of(package)
    url = versioned_url(slug, release["tag_name"], package["name"], version)
    if url is None:
        # tag 与资产名里都没有可回填的版本串，只能用 latest 跳转，它指向的 Release 必须含同名资产
        version = None
        url = f"{GITHUB_WEB}/{slug}/releases/latest/download/{urllib.parse.quote(package['name'], safe='')}"

    owner, repo_name = slug.split("/", 1)
    record = {
        "token": token_for(repo_name),
        "owner": owner,
        "repo_name": repo_name,
        "token_index": 0,
        "category": category,
        "repo": slug,
        "homepage": f"{GITHUB_WEB}/{homepage_slug}",
        "version": version,
        "sha256": digest,
        "asset_name": package["name"],
        "tag": release["tag_name"],
        "pinned": version is not None,
        "url": url,
    }
    record["name"] = name_of(app, record)
    record["desc"] = desc_of(app)
    return record, None


def cask_body(record):
    lines = [f'cask "{record["token"]}" do']
    if record["pinned"]:
        lines.append(f'  version "{record["version"]}"')
        if record["sha256"]:
            lines.append(f'  sha256 arm64_linux: "{record["sha256"]}"')
        else:
            lines.append("  sha256 :no_check")
    else:
        lines.append("  version :latest")
        lines.append("  sha256 :no_check")
    lines.append("")
    lines.append(f'  url "{record["url"]}"')
    lines.append(f'  name "{record["name"]}"')
    lines.append(f'  desc "{record["desc"]}"')
    lines.append(f'  homepage "{record["homepage"]}"')
    if record["pinned"]:
        lines.append("")
        lines.append("  livecheck do")
        lines.append(f'    url "{GITHUB_WEB}/{record["repo"]}"')
        lines.append("    strategy :github_latest")
        lines.append("  end")
    lines.append("")
    lines.append("  depends_on arch: :arm64")
    lines.append("  depends_on :linux")
    lines.append("  container type: :naked")
    lines.append("")
    lines.append(f'  ohos_app "{record["asset_name"]}"')
    lines.append("end")
    return "\n".join(lines) + "\n"


def collect(entries, client):
    """遍历条目，返回 (cask 记录, 跳过原因列表)。"""
    records = []
    skipped = []
    for category, app in entries:
        homepage_url = app.get("url") or ""
        download_url = app.get("link") or ""
        slug = github_slug(download_url) or github_slug(homepage_url)
        if slug is None:
            skipped.append((app.get("name", ""), "项目主页与下载页都不在 GitHub 上"))
            continue
        try:
            release = client.best_release(slug)
        except RateLimitError:
            raise
        except ApiError as error:
            skipped.append((app.get("name", ""), f"读取 Release 失败：{error}"))
            continue
        if release is None:
            skipped.append((app.get("name", ""), "仓库没有可用的 Release"))
            continue
        record, reason = build_record(category, app, release)
        if record is None:
            skipped.append((app.get("name", ""), reason))
            continue
        records.append(record)
    assign_tokens(records)
    return records, skipped


def write_casks(records, directory, newline):
    keep = {f"{record['token']}.rb" for record in records}
    for entry in os.listdir(directory):
        if entry.endswith(".rb") and entry not in keep:
            os.remove(os.path.join(directory, entry))
    for record in records:
        path = os.path.join(directory, f"{record['token']}.rb")
        with open(path, "w", encoding="utf-8", newline="") as handle:
            handle.write(cask_body(record).replace("\n", newline))


def existing_cask_count(directory):
    return sum(1 for entry in os.listdir(directory) if entry.endswith(".rb"))


def write_readme(records, skipped, path, newline):
    lines = [
        "# HarmonyOS 应用 Casks",
        "",
        "本目录下的 cask 由 `scripts/haps_to_casks.py` 从上游仓库",
        f"[{UPSTREAM}](https://github.com/{UPSTREAM}) 的 `apps.yaml` 生成，",
        "运行时整目录覆盖，手工改动会在下次生成时丢失。新增或修改条目请改上游的 `apps.yaml`。",
        "",
        "每个 cask 都用 `ohos_app` 把 HarmonyOS 应用包复制到 `~/Download`，",
        "配合 [HarmonyBrewCaskStore](https://atomgit.com/handwer/HarmonyBrewCaskStore) 里的 brew 适配补丁使用。",
        "",
        "## 收录范围",
        "",
        "只收录最新 Release 里带 `.hap` 或 `.app` 资产的条目。tag 或资产名里能回填版本号的，",
        "写成 `version` 加 `#{version}` 形式的下载地址，两者总能对上才不会在升级时取错文件；",
        "回填不了版本号的写成 `version :latest` 加 `releases/latest` 地址。",
        "资产自带 sha256 时写进 `sha256 arm64_linux:`，取不到摘要的写成 `sha256 :no_check`。",
        "cask token 取上游下载仓库名，重名时加上各自的 owner 前缀。",
        "",
        "## 当前收录",
        "",
    ]
    grouped = collections.defaultdict(list)
    for record in records:
        grouped[record["category"]].append(record)
    for category in CATEGORY_ORDER + [key for key in grouped if key not in CATEGORY_ORDER]:
        items = grouped.get(category)
        if not items:
            continue
        lines.append(f"### {category}")
        lines.append("")
        lines.append("| cask | 版本 | 软件 | 上游仓库 |")
        lines.append("| --- | --- | --- | --- |")
        for record in sorted(items, key=lambda item: item["token"]):
            version = record["version"] or "latest"
            lines.append(f"| `{record['token']}` | {version} | {record['name']} | `{record['repo']}` |")
        lines.append("")
    lines.append(f"合计 {len(records)} 个 cask，未收录 {len(skipped)} 个条目。")
    lines.append("")
    if skipped:
        lines.append("### 未收录的条目")
        lines.append("")
        lines.append("| 条目 | 原因 |")
        lines.append("| --- | --- |")
        for name, reason in skipped:
            lines.append(f"| {name} | {reason} |")
        lines.append("")
    with open(path, "w", encoding="utf-8", newline="") as handle:
        handle.write(newline.join(lines).replace("\n", newline))


def existing_line_ending(directory):
    """仓库里已提交的文件用 CRLF 时保持原样。"""
    for entry in sorted(os.listdir(directory)):
        if not entry.endswith(".rb"):
            continue
        with open(os.path.join(directory, entry), "rb") as handle:
            data = handle.read()
        if b"\r\n" in data:
            return "\r\n"
        if data:
            return "\n"
    return "\n"


def main(argv=None):
    parser = argparse.ArgumentParser(description="把 HarmonyOS-Haps 的应用列表转换成 Homebrew cask")
    parser.add_argument("--token", default=os.environ.get("GITHUB_TOKEN"), help="GitHub 访问令牌，默认读 GITHUB_TOKEN")
    parser.add_argument("--output", default="Casks", help="cask 输出目录")
    parser.add_argument("--upstream-file", help="本地的 apps.yaml，给定时不联网读取上游仓库")
    parser.add_argument("--only", action="append", default=[], help="只处理指定仓库，可重复")
    parser.add_argument("--newline", choices=["lf", "crlf", "auto"], default="auto")
    parser.add_argument("--allow-empty", action="store_true", help="一个 cask 都没生成时也清空输出目录")
    parser.add_argument("--timeout", type=int, default=30)
    args = parser.parse_args(argv)

    client = Client(token=args.token, timeout=args.timeout)

    if args.upstream_file:
        with open(args.upstream_file, encoding="utf-8") as handle:
            entries = entries_from_payload(yaml.safe_load(handle))
    else:
        entries = fetch_upstream_apps(client)

    if args.only:
        wanted = set(args.only)
        entries = [
            (category, app)
            for category, app in entries
            if (github_slug(app.get("link")) or github_slug(app.get("url"))) in wanted
        ]

    if not entries:
        print("上游应用列表为空，终止生成", file=sys.stderr)
        return 1

    try:
        records, skipped = collect(entries, client)
    except RateLimitError as error:
        print(f"GitHub API 额度用尽（{error}），本次不写文件", file=sys.stderr)
        return 2

    os.makedirs(args.output, exist_ok=True)
    # 没有解析出任何 cask 时，上游多半是出了问题，此时清空目录会把已有的 cask 全删掉
    if not records and not args.allow_empty and existing_cask_count(args.output):
        print("上游没有可生成的 cask，保留已有文件退出", file=sys.stderr)
        return 3
    if args.newline == "lf":
        newline = "\n"
    elif args.newline == "crlf":
        newline = "\r\n"
    else:
        newline = existing_line_ending(args.output)
    write_casks(records, args.output, newline)
    write_readme(records, skipped, os.path.join(args.output, "README.md"), newline)

    for name, reason in skipped:
        print(f"跳过 {name}：{reason}", file=sys.stderr)
    print(f"生成 {len(records)} 个 cask，跳过 {len(skipped)} 个条目", file=sys.stderr)
    if client.remaining is not None:
        print(f"GitHub API 剩余额度：{client.remaining}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
