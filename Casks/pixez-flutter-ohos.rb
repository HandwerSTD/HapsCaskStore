cask "pixez-flutter-ohos" do
  version "0.9.110"
  sha256 arm64_linux: "07ea39531378fd87f1fc6bbb8feca4e35a9d296d9409eb03b8c503b12004e863"

  url "https://github.com/bgli100/pixez-flutter-ohos/releases/download/#{version}/pixez-flutter-ohos-0.9.110.hap"
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

  ohos_app "pixez-flutter-ohos-0.9.110.hap"
end
