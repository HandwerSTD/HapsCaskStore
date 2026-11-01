cask "pixez-flutter-ohos" do
  version "0.9.112.1"
  sha256 arm64_linux: "16b53921f3e2350fe7492c0d2df3e769c966685502f4b953ac7dca4df3191fd4"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.112.1.hap"
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

  ohos_app "pixez-flutter-ohos-0.9.112.1.hap"
end
