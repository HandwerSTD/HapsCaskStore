cask "quietstart" do
  version "1.2.7"
  sha256 arm64_linux: "90fc54514aada011336909d4b339f1666e3fb4c8ad728ec3aa3d2817742caafc"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}/quietstart-1.2.7.hap"
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

  ohos_app "quietstart-1.2.7.hap"
end
