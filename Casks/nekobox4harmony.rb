cask "nekobox4harmony" do
  version "2.7.0"
  sha256 arm64_linux: "a9b21f199e5c7a75944fee7b6d48e8e403841604137ef994b9bf94a36f9455cb"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}/NekoBox-2.7.0-device-signed.hap"
  name "NekoBox"
  desc "基于sing-box内核的鸿蒙VPN客户端，支持多协议与订阅"
  homepage "https://github.com/xiaoli8571/NekoBox4Harmony"

  livecheck do
    url "https://github.com/xiaoli8571/NekoBox4Harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NekoBox-2.7.0-device-signed.hap"
end
