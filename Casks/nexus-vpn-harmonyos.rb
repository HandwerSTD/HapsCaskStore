cask "nexus-vpn-harmonyos" do
  version "0.4.3"
  sha256 arm64_linux: "538aeb1822ebfc43000e6ed3b025132b2f07da37242238be501b35ed65cd6df0"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-HarmonyOS-0.4.3-unsigned.hap"
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

  ohos_app "TunBox-HarmonyOS-0.4.3-unsigned.hap"
end
