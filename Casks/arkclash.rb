cask "arkclash" do
  version "0.1.1"
  sha256 arm64_linux: "2536e90fe74d470db26028d56d6d32ccbf1f2a43bb1936ab3f49167ccb0d18bf"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.1.1-debug-signed.hap"
  name "ArkClash"
  desc "基于 Mihomo 内核的鸿蒙代理客户端"
  homepage "https://github.com/VOD-Studio/ArkClash"

  livecheck do
    url "https://github.com/VOD-Studio/ArkClash"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ArkClash-0.1.1-debug-signed.hap"
end
