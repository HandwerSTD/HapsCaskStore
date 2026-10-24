cask "nekobox4harmony" do
  version "2.3.0"
  sha256 arm64_linux: "2a3b4409aa193015bd50c1c8e1484de830f1d3a7344e55f4db3cb5da29b9d0ca"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}/NekoBox4Harmony-2.3.0-unsigned.hap"
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

  ohos_app "NekoBox4Harmony-2.3.0-unsigned.hap"
end
