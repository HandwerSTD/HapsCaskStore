cask "pixez-flutter-ohos" do
  version "0.9.112"
  sha256 arm64_linux: "dd8b7739e70f6b4cc5e2ef4c376a5f31f906ebb582aafd345f231368902c69aa"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.112.hap"
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

  ohos_app "pixez-flutter-ohos-0.9.112.hap"
end
