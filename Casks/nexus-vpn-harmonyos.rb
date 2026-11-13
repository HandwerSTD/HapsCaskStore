cask "nexus-vpn-harmonyos" do
  version "0.8.9"
  sha256 arm64_linux: "25b9070cd97e77fbf72dfeb0f32bd656f2ba6a021617f4444ccfdc0b468e8fbe"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.8.9-unsigned.hap"
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

  ohos_app "TunBox-0.8.9-unsigned.hap"
end
