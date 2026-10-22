cask "nexus-vpn-harmonyos" do
  version "0.5.2"
  sha256 arm64_linux: "ec6bd3e4cb13e4545300b29369b25796c1e368fe940246a567f9689185e961ee"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-HarmonyOS-0.5.2-unsigned.hap"
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

  ohos_app "TunBox-HarmonyOS-0.5.2-unsigned.hap"
end
