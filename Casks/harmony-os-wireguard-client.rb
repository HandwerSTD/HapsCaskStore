cask "harmony-os-wireguard-client" do
  version "1.3.4"
  sha256 arm64_linux: "96c2afe383074f362d3bc73cdd08f4badec3fe7ce01f9b0842e79d4725c9ee72"

  url "https://github.com/volcano911/harmony-OS-wireguard-client/releases/download/v#{version}/harmonyos-wg-client-1.3.4-api23-arm64-debug-unsigned.hap"
  name "HarmonyOS WireGuard Client"
  desc "鸿蒙原生 WireGuard VPN 客户端"
  homepage "https://github.com/volcano911/harmony-OS-wireguard-client"

  livecheck do
    url "https://github.com/volcano911/harmony-OS-wireguard-client"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "harmonyos-wg-client-1.3.4-api23-arm64-debug-unsigned.hap"
end
