cask "nexus-vpn-harmonyos" do
  version "0.3.1"
  sha256 arm64_linux: "24a01a7bb84e0a1c608d1159e9502e9d31edbc7d8b87a4e40e07dd1109d6075f"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-HarmonyOS-0.3.1-unsigned.hap"
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

  ohos_app "TunBox-HarmonyOS-0.3.1-unsigned.hap"
end
