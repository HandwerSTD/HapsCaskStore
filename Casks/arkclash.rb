cask "arkclash" do
  version "0.6.3"
  sha256 arm64_linux: "ae64568018894cd07d320bd84012da2350562a19badc14bebcc476f03a8c42fc"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.6.3-unsigned.hap"
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

  ohos_app "ArkClash-0.6.3-unsigned.hap"
end
