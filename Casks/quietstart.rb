cask "quietstart" do
  version "1.2.9"
  sha256 arm64_linux: "f94195ca4100e23a28e02ba81515386f46b05a633fbac845025fb70c731f2697"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-beta-129001/quietstart-1.2.9-beta-129001.hap"
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

  ohos_app "quietstart-1.2.9-beta-129001.hap"
end
