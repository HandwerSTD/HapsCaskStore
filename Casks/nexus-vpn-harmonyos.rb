cask "nexus-vpn-harmonyos" do
  version "0.5.5"
  sha256 arm64_linux: "9fa6f8a61b3fe8049c621d230d2f97223b0f5cab04512acc0ded5211aad98ae6"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.5.5-release-signed.hap"
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

  ohos_app "TunBox-0.5.5-release-signed.hap"
end
