cask "tiktoh" do
  version "0.2.3"
  sha256 arm64_linux: "cdf2c53f24ec0ef5aeb9532a06e8c63cb226fc2fe8c97a7aa94a5605a250a160"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.2.3-unsigned.hap"
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

  ohos_app "TikToh-0.2.3-unsigned.hap"
end
