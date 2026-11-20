cask "tiktoh" do
  version "0.2.9"
  sha256 arm64_linux: "7ff42cdadaabc157493f765a71550e63a1fec971c1cdfad53224a446140f2c48"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.2.9-unsigned.hap"
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

  ohos_app "TikToh-0.2.9-unsigned.hap"
end
