cask "quietstart" do
  version "1.2.4"
  sha256 arm64_linux: "eb5abaabe5521c1f9ad5dabf35c603be233be21a31a8cc154ac01676fc7c6803"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}/quietstart-1.2.4.hap"
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

  ohos_app "quietstart-1.2.4.hap"
end
