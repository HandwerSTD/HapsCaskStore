cask "tiktoh" do
  version "0.3.0"
  sha256 arm64_linux: "8a272f0c57784338701fc8ec616f3096e495090092998a5d91a4d9a0b701ea38"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.3.0-unsigned.hap"
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

  ohos_app "TikToh-0.3.0-unsigned.hap"
end
