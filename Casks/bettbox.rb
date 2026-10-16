cask "bettbox" do
  version "1.19.5"
  sha256 arm64_linux: "9322b52f5e512838fefb36f956f7782f6c982f156ae73c31e9c8d62699c9e731"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.5-ohos-vc2026101301-unsigned.hap"
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

  ohos_app "bettbox-1.19.5-ohos-vc2026101301-unsigned.hap"
end
