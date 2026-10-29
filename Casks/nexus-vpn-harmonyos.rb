cask "nexus-vpn-harmonyos" do
  version "0.7.2"
  sha256 arm64_linux: "80b5b418d747a422aedbad322b794aacf2d569ebf126c108f945cc1c7dfcc543"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/TunBox-0.7.2-unsigned.hap"
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

  ohos_app "TunBox-0.7.2-unsigned.hap"
end
