cask "quietstart" do
  version "1.2.2"
  sha256 arm64_linux: "45658abea02f04bef5b50e765016bd14f29167a5d742c073199e71b30402e831"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-beta-120391/quietstart-1.2.2-beta-120391.hap"
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

  ohos_app "quietstart-1.2.2-beta-120391.hap"
end
