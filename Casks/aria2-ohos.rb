cask "aria2-ohos" do
  version "1.0.1"
  sha256 arm64_linux: "08f701808b0242be9f3b1602a6c073e091898ab00982c56af7d8cece3b9d2df9"

  url "https://github.com/SwimmingTiger/aria2-ohos/releases/download/v#{version}-hnp/cn.hu60.aria2-v1.0.1-hnp.hap"
  name "aria2"
  desc "一个能在鸿蒙PC上通过命令行使用的Aria2下载工具"
  homepage "https://github.com/SwimmingTiger/aria2-ohos"

  livecheck do
    url "https://github.com/SwimmingTiger/aria2-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "cn.hu60.aria2-v1.0.1-hnp.hap"
end
