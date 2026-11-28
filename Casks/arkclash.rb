cask "arkclash" do
  version "0.6.4"
  sha256 arm64_linux: "a9cb063aed741a743a316a12ab8ffb52905c4066260f72e95141870ae90edbf4"

  url "https://github.com/VOD-Studio/ArkClash/releases/download/v#{version}/ArkClash-0.6.4-unsigned.hap"
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

  ohos_app "ArkClash-0.6.4-unsigned.hap"
end
