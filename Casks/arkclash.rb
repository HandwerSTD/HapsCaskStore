cask "arkclash" do
  version "0.6.1"
  sha256 arm64_linux: "f3f8f8fa9770bcb3a8f0cef32fa4a4f627a98533614456410d3be2c2ca1a5579"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.6.1-unsigned.hap"
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

  ohos_app "ArkClash-0.6.1-unsigned.hap"
end
