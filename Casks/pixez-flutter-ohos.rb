cask "pixez-flutter-ohos" do
  version "0.9.113.2"
  sha256 arm64_linux: "b4ded3e3177c1c5bb5b217c9dd4db5f87aba3c364a2f58b1f153ed9d7e570065"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.113.2.hap"
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

  ohos_app "pixez-flutter-ohos-0.9.113.2.hap"
end
