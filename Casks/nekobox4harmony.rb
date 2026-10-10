cask "nekobox4harmony" do
  version "2.0.2"
  sha256 arm64_linux: "4bf40f1dc33b0723fa886008d309d5dc557ec49893ed2a4af0fd0f1c75361437"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}/NekoBox4Harmony-2.0.2-unsigned.hap"
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

  ohos_app "NekoBox4Harmony-2.0.2-unsigned.hap"
end
