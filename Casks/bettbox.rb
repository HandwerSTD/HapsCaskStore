cask "bettbox" do
  version "1.19.4"
  sha256 arm64_linux: "bb0f6e9d5cb92349ed8ef6784db840e953d6deffc90a8ae45b43aebf3f1daa32"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.4-ohos-unsigned.hap"
  name "Bettbox"
  desc "基于 Mihomo 的鸿蒙代理客户端，支持 VPN 与后台保活"
  homepage "https://github.com/htoay/Bettbox"

  livecheck do
    url "https://github.com/htoay/Bettbox"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "bettbox-1.19.4-ohos-unsigned.hap"
end
