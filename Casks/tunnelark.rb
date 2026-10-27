cask "tunnelark" do
  version "1.1.3"
  sha256 arm64_linux: "e6723ac332e8dc3995e3b964ac0f0670bfa1c89cb6a97fa60cb776fc775cb0c3"

  url "https://github.com/RockyMtnWolf/TunnelArk/releases/download/v#{version}/TunnelArk-1.1.3-release-unsigned.hap"
  name "隧舟 TunnelArk"
  desc "鸿蒙 Tailscale 客户端，支持 FRP 与代理共存"
  homepage "https://github.com/RockyMtnWolf/TunnelArk"

  livecheck do
    url "https://github.com/RockyMtnWolf/TunnelArk"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "TunnelArk-1.1.3-release-unsigned.hap"
end
