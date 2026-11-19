cask "tiktoh" do
  version "0.2.7"
  sha256 arm64_linux: "a37a30bb7dd6ec9d287923d54f6a5ecfdff72ff1c1def7e8a185a556b06c8854"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.2.7-unsigned.hap"
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

  ohos_app "TikToh-0.2.7-unsigned.hap"
end
