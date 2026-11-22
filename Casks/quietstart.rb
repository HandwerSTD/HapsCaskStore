cask "quietstart" do
  version "1.3.0"
  sha256 arm64_linux: "0c1cc996951c055c0139f070ad1714edb8e8e5b1efcb6123d0b888dc1bf81e81"

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
