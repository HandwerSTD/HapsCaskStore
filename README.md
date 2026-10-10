# Harmonybrew Cask Store (GitHub)

把 [Zitann/HarmonyOS-Haps](https://github.com/Zitann/HarmonyOS-Haps) 收录的 HarmonyOS 应用列表
转换成 [Harmonybrew](https://atomgit.com/Harmonybrew/brew) 可用的 Homebrew cask。

## 安装

在装了 [Harmonybrew](https://atomgit.com/Harmonybrew/brew) 的鸿蒙设备上执行这一条：

```sh
wget -O - "https://raw.githubusercontent.com/HandwerSTD/HapsCaskStore/main/install.sh" | sh
```

连不上 `raw.githubusercontent.com` 的网络（某些环境会拦这个域名）改用 git 取：

```sh
git clone --depth 1 https://github.com/HandwerSTD/HapsCaskStore.git ~/haps-cask-store
sh ~/haps-cask-store/install.sh
```

脚本会先检测 brew 有没有 cask 能力（Harmonybrew 自带的版本不包含 cask 支持，
`brew install --cask` 用不了）。检测方式是看补丁带来的 `ohos_app` stanza 在不在：

- 已经在：跳过补丁，直接配置本仓库。
- 不在：转而执行 [HarmonyBrewCasks](https://gitcode.com/handwer/HarmonyBrewCasks) 的一键安装，
  打上那组补丁（其中 0005 引入 `ohos_app` stanza）并装好签名工具 `ohos-selfsign`，
  然后继续配置本仓库。

配置的部分是 `brew tap` 加 `brew trust`。已经打过 tap 的会改成 `git pull` 更新，不重复检出。
重复跑同一条命令是安全的。

`brew tap` 后面的名字是 `HandwerSTD/haps-cask-store`，不带 `homebrew-` 前缀：
带地址的两参数形式直接用这个名字，实际检出目录是 `handwerstd/homebrew-haps-cask-store`。
后面所有命令里的 tap 名字都要跟 `brew tap` 时用的这个一致。

## 手动安装

不想用一键命令的话分两步。

先应用补丁，签名工具 `ohos-selfsign` 也在这里装：

```sh
git clone https://gitcode.com/handwer/HarmonyBrewCasks.git
cd HarmonyBrewCasks
sh ./tools/apply-patches.sh
sh ./tools/check-patches.sh    # 确认补丁已落地
```

补丁以提交形式落在 Homebrew 检出目录的 `main` 分支上，`brew update` 会在此之上
`git rebase origin/main`，所以后续更新不会被丢掉。涉及的文件、完整说明以及回退方法
都在该仓库的 README 里。

再添加 tap：

```sh
brew tap HandwerSTD/haps-cask-store https://github.com/HandwerSTD/HapsCaskStore.git
brew trust --tap HandwerSTD/haps-cask-store
```

三个命令的用途：

| 命令 | 作用 |
| --- | --- |
| `brew tap` | 把仓库检出到 tap 目录。两个参数的形式不预设仓库地址，所以地址要写全 |
| `brew trust` | 非官方 tap 默认不被信任，不信任的话 `brew search --cask` 与 `brew casks` 会跳过本仓库 |
| `brew install --cask` | 按 token 安装 |

## 安装应用

```sh
brew install --cask lnga-harmony
```

`ohos_app` 会把应用包复制到 `~/Download`，应用包本身由设备上的安装工具负责签名与安装，
比如 [小白调试助手](https://github.com/likuai2010/auto-installer/releases/latest)：

```
==> Installing HarmonyOS Application 'entry-default.hap' to '/data/.../Download/entry-default.hap'
```

可用 token 见 [`Casks/README.md`](Casks/README.md)。想一次装全部：

```sh
brew install --cask $(brew casks | grep '^handwerstd/haps-cask-store/')
```

卸载按同样的名字：

```sh
brew uninstall --cask lnga-harmony
```

`ref/` 里的上游列表只是转换脚本的输入参考，实际发布的是 `Casks/` 目录。

## 目录

| 路径 | 内容 |
| --- | --- |
| `install.sh` | 一键安装：确保 cask 能力，把本仓库加成 tap 并建立信任 |
| `scripts/haps_to_casks.py` | 读取上游 `apps.yaml`，查询各仓库的 Release，生成 cask |
| `Casks/` | 生成结果，每次运行整目录覆盖 |
| `.github/workflows/sync-casks.yml` | 每天定时运行并提交变化，也可以手动触发 |

## 运行方式

工作流用仓库自带的 `GITHUB_TOKEN` 调用 GitHub API，不需要额外配置。本地手动运行：

```sh
python3 -m pip install pyyaml
python scripts/haps_to_casks.py --output Casks --token "$GITHUB_TOKEN"
```

不联网调试转换逻辑时，可以喂一份本地 `apps.yaml`：

```sh
python scripts/haps_to_casks.py --upstream-file ref/HarmonyOS-Haps/apps.yaml --output /tmp/casks
```

匿名调用 GitHub API 每个 IP 每小时只有 60 次，而这里要查上百个仓库，
所以本地运行时建议带上 `--token`。额度用尽时脚本会直接退出，不会覆盖已有文件。

## 生成规则

每个条目做三件事：从 `link`（或退回到 `url`）取出 GitHub 仓库，取该仓库用作数据来源的
Release，再从中挑一个 `.hap` 或 `.app` 资产。

**挑选 Release。** `releases/latest` 会跳过预发布，而不少鸿蒙应用只发预发布，
所以脚本读 Release 列表后自己挑：稳定版优先，其次创建时间更晚的优先。

**挑选资产。** 只保留 `.hap` 与 `.app`，优先 `.app`（整包）。同一个 Release 里常有
signed/unsigned 等多个变体，按「有 sha256 的优先，其次构建类型标识（debug、api23、beta 等）
更少、下载次数更多、名字更短」排序。

**版本与地址。** 版本号取 tag 里的第一处版本串（例如 `v1.0.6.158` 取 `1.0.6.158`）。
下载地址里的版本号写成 `#{version}`，这样升级时地址会跟着版本走：

```ruby
version "1.3.0"
url "https://github.com/137458/tieba-lite-harmony/releases/download/v#{version}/tieba-lite-harmony-v#{version}.hap"
```

回填位置按 tag、资产名的顺序尝试，版本串在哪个里就填哪个。两边都找不到版本串时
（例如 tag 是 `HM`、`latest` 这种情况）退化成 `version :latest` 加
`releases/latest/download/<资产名>`，这时地址里不能出现 `#{version}`。

**sha256。** 资产自带 `digest` 字段时写进 `sha256 arm64_linux:`。
取不到摘要的（旧资产没有这个字段）写 `sha256 :no_check`，同时保留版本号——
当 tag 或资产名含可回填的版本串时仍然用 `#{version}` 地址，只有真的没有版本串才用 `latest`。

**token。** 取下载仓库名，转小写并把非 `[a-z0-9]` 字符折叠成连字符。
重名时（例如两个仓库都叫 `JMComic-HarmonyOS`）给所有同名条目加上各自的 owner 前缀。

## cask 的形态

```ruby
cask "lnga-harmony" do
  version "1.2.6"
  sha256 arm64_linux: "6dd536bef402ca460f55276f611d2c8da9b5ab60137b08fea7915820f4801022"

  url "https://github.com/apap6628114/lnga_harmony/releases/download/#{version}/entry-default.hap"
  name "LNGA"
  desc "NGA玩家社区鸿蒙原生客户端，支持板块浏览、帖子阅读、发帖回复与私信聊天"
  homepage "https://github.com/apap6628114/lnga_harmony"

  livecheck do
    url "https://github.com/apap6628114/lnga_harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default.hap"
end
```

`container type: :naked` 不能省：`.hap` 与 `.app` 都是 zip，不声明的话 Homebrew 会把它们解开，
`ohos_app` 就找不到整包文件。`ohos_app` 是 Harmonybrew 的适配补丁新增的 stanza
（见 [BrewCaskImpl](https://atomgit.com/handwer/BrewCaskImpl)），把应用包复制到 `~/Download`。

## 上游不可用的条目

上游 `apps.yaml` 里有 104 个条目，其中一部分生成不出 cask：仓库没有 Release、
Release 里没有 `.hap`/`.app`（只发源码压缩包或别的平台产物）、或者下载页不在 GitHub 上
（例如 Gitee、Telegram、AppGallery 邀请链接）。脚本会把每个跳过原因打到 stderr，
并写进 `Casks/README.md` 的「未收录的条目」一节。
