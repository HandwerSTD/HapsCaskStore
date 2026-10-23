cask "quietstart" do
  version "1.2.8"
  sha256 arm64_linux: "112bbd0cdbf3804fc7aefe3a1c42f0c64660fd5a9b8bdbeac004b8c72a54b4e3"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}/quietstart-1.2.8.hap"
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

  ohos_app "quietstart-1.2.8.hap"
end
