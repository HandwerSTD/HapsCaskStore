cask "nexus-vpn-harmonyos" do
  version "0.2.0"
  sha256 arm64_linux: "bcd3c8783c66ddb13b8fe32ad45e09667ef9ff7460e288aeda219d914be297ec"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.2.0-unsigned.hap"
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

  ohos_app "TunBox-0.2.0-unsigned.hap"
end
