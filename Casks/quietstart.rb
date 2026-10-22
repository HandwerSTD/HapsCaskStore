cask "quietstart" do
  version "1.2.8"
  sha256 arm64_linux: "ae95799e58f02b74f64d475c83b071d6fb9628792c814c3bfca39ce60fd7a2e8"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-beta-128002/quietstart-1.2.8-beta-128002.hap"
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

  ohos_app "quietstart-1.2.8-beta-128002.hap"
end
