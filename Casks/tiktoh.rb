cask "tiktoh" do
  version "0.2.10"
  sha256 arm64_linux: "435d42e9a813cca45c888e03e77637cfdddfa7140a2934480c1bfefb44a92765"

  url "https://github.com/DUDUXXR2/tiktoh/releases/download/v#{version}/TikToh-0.2.10-unsigned.hap"
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

  ohos_app "TikToh-0.2.10-unsigned.hap"
end
