cask "tiktoh" do
  version "0.2.0"
  sha256 arm64_linux: "4fd0d6e18a1707c2608a38cb211b1f94a97ce6a7ec05c7906a0dd82c03049129"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.2.0-unsigned.hap"
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

  ohos_app "TikToh-0.2.0-unsigned.hap"
end
