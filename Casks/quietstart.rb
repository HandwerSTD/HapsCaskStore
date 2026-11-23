cask "quietstart" do
  version "1.3.1"
  sha256 arm64_linux: "f40b7cbd86e31e0dbcbceb04e70e9c14b591b37fdc135bf22c2d5f34e357ae33"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-preview-1310006/quietstart-1.3.1-preview-1310006.hap"
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

  ohos_app "quietstart-1.3.1-preview-1310006.hap"
end
