cask "bettbox" do
  version "1.19.8"
  sha256 arm64_linux: "9e0d127c00875ba99335dc808eb5248082988d9cefe6abc393ec29250fe88b95"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.8-ohos-vc2026111101-unsigned.hap"
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

  ohos_app "bettbox-1.19.8-ohos-vc2026111101-unsigned.hap"
end
