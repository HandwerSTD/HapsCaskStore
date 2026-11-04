cask "nexus-vpn-harmonyos" do
  version "0.8.1"
  sha256 arm64_linux: "84c2c2019fbf55126436d2fa51eb8ec2d137ce79e1b648d701dc292ef8d8f214"

  url "https://github.com/xiaoli8571/Nexus-VPN-HarmonyOS/releases/download/v#{version}/entry-default-unsigned.hap"
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

  ohos_app "entry-default-unsigned.hap"
end
