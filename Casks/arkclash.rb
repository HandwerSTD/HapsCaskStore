cask "arkclash" do
  version "0.5.1"
  sha256 arm64_linux: "bfbedccf7854e9d7023520abafa7bcb602aaf7d457b31c066a5f38359a0eebce"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.5.1-unsigned.hap"
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

  ohos_app "ArkClash-0.5.1-unsigned.hap"
end
