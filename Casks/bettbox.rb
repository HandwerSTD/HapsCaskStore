cask "bettbox" do
  version "1.19.7"
  sha256 arm64_linux: "a32f328546f56948b7c0a448c677bb1029e9479990557f04e239a8429e86793b"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.7-ohos-vc2026102201-unsigned.hap"
  name "Bettbox"
  desc "基于 Mihomo 的鸿蒙代理客户端，支持 VPN 与后台保活"
  homepage "https://github.com/htoay/Bettbox"

  livecheck do
    url "https://github.com/htoay/Bettbox"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "bettbox-1.19.7-ohos-vc2026102201-unsigned.hap"
end
