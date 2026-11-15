cask "quietstart" do
  version "1.3.0"
  sha256 arm64_linux: "650be12ea5e3caec6aa9ffbe26cb94068c4e5635dac895590989da27ca919a8d"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-preview-130001/quietstart-1.3.0-preview-130001.hap"
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

  ohos_app "quietstart-1.3.0-preview-130001.hap"
end
