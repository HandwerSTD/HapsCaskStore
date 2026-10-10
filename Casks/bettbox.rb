cask "bettbox" do
  version "1.19.4-1"
  sha256 arm64_linux: "5237033efba879282fc37b188412052959efca72f18bdd5160d224559edb4a4e"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.4-ohos-vc2026100901-unsigned.hap"
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

  ohos_app "bettbox-1.19.4-ohos-vc2026100901-unsigned.hap"
end
