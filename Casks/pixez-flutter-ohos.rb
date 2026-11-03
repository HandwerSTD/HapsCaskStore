cask "pixez-flutter-ohos" do
  version "0.9.113"
  sha256 arm64_linux: "231c5f8334856c5081b59c85b2e099eeb22e174602047f424d3f284351e741fa"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.113.hap"
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

  ohos_app "pixez-flutter-ohos-0.9.113.hap"
end
