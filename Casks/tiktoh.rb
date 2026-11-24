cask "tiktoh" do
  version "0.3.2"
  sha256 arm64_linux: "14e844fd1a3068092bc7887b8c11db371aef74c924a3e8339dd8c37bc711af21"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.3.2-unsigned.hap"
  name "TikToh"
  desc "鸿蒙短视频客户端，支持 TikTok 与抖音浏览"
  homepage "https://github.com/DUDUXXR2/tiktoh"

  livecheck do
    url "https://github.com/DUDUXXR2/tiktoh"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "TikToh-0.3.2-unsigned.hap"
end
