cask "nexus-vpn-harmonyos" do
  version "0.8.0"
  sha256 arm64_linux: "0192bfc88c9d416b5eb4474f2279a3e60a933fcfd204780f249429cfe72b02da"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.8.0-unsigned.hap"
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

  ohos_app "TunBox-0.8.0-unsigned.hap"
end
