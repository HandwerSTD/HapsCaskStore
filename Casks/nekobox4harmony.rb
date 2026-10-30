cask "nekobox4harmony" do
  version "2.6.0"
  sha256 arm64_linux: "c8293e71c8a5cc3db7836cb25c4616aa7e25d99ebce511ec93ee76651e262bda"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}/NekoBox4Harmony-2.6.0-signed.hap"
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

  ohos_app "NekoBox4Harmony-2.6.0-signed.hap"
end
