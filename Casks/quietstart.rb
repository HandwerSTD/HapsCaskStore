cask "quietstart" do
  version "1.2.0"
  sha256 arm64_linux: "33f8b361c90f1db35b1eef660c33dd2b099507fcffbb623c99367c4cd82f2041"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}/quietstart-1.2.0.hap"
  name "轻启"
  desc "鸿蒙原生页面控件识别工具，自动跳过广告开屏"
  homepage "https://github.com/thx853068675-dev/quietstart"

  livecheck do
    url "https://github.com/thx853068675-dev/quietstart"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "quietstart-1.2.0.hap"
end
