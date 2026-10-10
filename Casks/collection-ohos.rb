cask "collection-ohos" do
  version "1.29.0"
  sha256 arm64_linux: "f998e9c03ac3628e0d1be8e05399e0275803e58a7738f749db0d3d457f0f769a"

  url "https://github.com/muleos/collection_ohos/releases/download/v#{version}/collection-1.29.0-unsigned.hap"
  name "收藏"
  desc "小红书等多平台媒体收藏下载工具，支持图片与视频保存"
  homepage "https://github.com/muleos/collection_ohos"

  livecheck do
    url "https://github.com/muleos/collection_ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "collection-1.29.0-unsigned.hap"
end
