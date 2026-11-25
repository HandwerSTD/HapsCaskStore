cask "quietstart" do
  version "1.3.2"
  sha256 arm64_linux: "4b181fb21707eeef31e6154f0ec5d5abec65af59e9629fe462adbfe877d6b1cf"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-preview-1320002/quietstart-1.3.2-preview-1320002.hap"
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

  ohos_app "quietstart-1.3.2-preview-1320002.hap"
end
