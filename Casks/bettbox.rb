cask "bettbox" do
  version "1.19.6"
  sha256 arm64_linux: "6d8e10edc0d8c73d1a999e25000fc0607e3019333e610dcec70b1cb909e60172"

  url "https://github.com/htoay/Bettbox/releases/download/ohos-v#{version}/bettbox-1.19.6-ohos-vc2026101601-unsigned.hap"
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

  ohos_app "bettbox-1.19.6-ohos-vc2026101601-unsigned.hap"
end
