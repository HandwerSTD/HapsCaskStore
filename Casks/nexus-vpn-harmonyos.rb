cask "nexus-vpn-harmonyos" do
  version "0.6.8"
  sha256 arm64_linux: "fedabc280af267cd537ce1705767ff2737898f3d77909581b93129f5595747a9"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.6.8-unsigned.hap"
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

  ohos_app "TunBox-0.6.8-unsigned.hap"
end
