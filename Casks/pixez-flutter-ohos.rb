cask "pixez-flutter-ohos" do
  version "0.9.114"
  sha256 arm64_linux: "1cd7bb58c7c3333c106db4e37aa9774bd4f76c4a23e57f123e2614abd0020f60"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.114.hap"
  name "PixEz"
  desc "一款支持免代理直连及查看动图的第三方Pixiv flutter客户端"
  homepage "https://github.com/bgli100/pixez-flutter-ohos"

  livecheck do
    url "https://github.com/bgli100/pixez-flutter-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "pixez-flutter-ohos-0.9.114.hap"
end
