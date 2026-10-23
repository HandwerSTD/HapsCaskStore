cask "nekobox4harmony" do
  version "2.1.8"
  sha256 arm64_linux: "2cced18b4fead56b07b62fdb8c85d597414bcb39c57c9994acdd5f8cfcde959f"

  url "https://github.com/xiaoli8571/NekoBox4Harmony/releases/download/v#{version}/NekoBox4Harmony-2.1.8-unsigned.hap"
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

  ohos_app "NekoBox4Harmony-2.1.8-unsigned.hap"
end
