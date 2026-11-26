cask "tiktoh" do
  version "0.3.3"
  sha256 arm64_linux: "206be97898839bc095408e25d95a6d2b437f7cf36ea33ddf3203fca1f4e552b7"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.3.3-unsigned.hap"
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

  ohos_app "TikToh-0.3.3-unsigned.hap"
end
