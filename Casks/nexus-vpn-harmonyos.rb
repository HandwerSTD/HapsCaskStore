cask "nexus-vpn-harmonyos" do
  version "0.4.2"
  sha256 arm64_linux: "c8ab8bde1a98125381e9622ba45d5ba5f8165245fc4bdf483864b2dcdd89cbda"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-HarmonyOS-0.4.2-unsigned.hap"
  name "Nexus"
  desc "鸿蒙原生代理客户端，Mihomo 内核进程内嵌 TUN"
  homepage "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS"

  livecheck do
    url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "TunBox-HarmonyOS-0.4.2-unsigned.hap"
end
