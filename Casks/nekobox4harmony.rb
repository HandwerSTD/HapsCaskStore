cask "nekobox4harmony" do
  version "1.5.5"
  sha256 arm64_linux: "a346a5eea27c108c2daf34a6a0d7dc973b184b4a6d00b52cc2aedb69b086d512"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}-ohos/entry-default-unsigned.hap"
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

  ohos_app "entry-default-unsigned.hap"
end
