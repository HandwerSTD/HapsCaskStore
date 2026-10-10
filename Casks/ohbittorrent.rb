cask "ohbittorrent" do
  version "1.0.0"
  sha256 arm64_linux: "ef3440d9722d494b095243444b2c36bfdfe27a4cd7d6c9eb330494e5ef9d8719"

  url "https://github.com/HanversionOvO/OHBittorrent/releases/download/v#{version}/OHBittorrent.hap"
  name "OHBittorrent"
  desc "qBittorrent 鸿蒙原生移植版，基于 Qt 6 的桌面级 BT 下载客户端"
  homepage "https://github.com/HanversionOvO/OHBittorrent"

  livecheck do
    url "https://github.com/HanversionOvO/OHBittorrent"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "OHBittorrent.hap"
end
