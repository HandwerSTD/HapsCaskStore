cask "hapapp" do
  version "1.7.4"
  sha256 arm64_linux: "9977a4b9e40c96e2fcb7831340f43829a25f95c5aa5ffe7addb811992cfdfd0e"

  url "https://github.com/xiaobaigroup/hapapp/releases/download/#{version}/ClashBox_LTS_V1_unsigned.hap"
  name "ClashBox"
  desc "基于Mihomo内核的鸿蒙代理软件"
  homepage "https://github.com/xiaobaigroup/hapapp"

  livecheck do
    url "https://github.com/xiaobaigroup/hapapp"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ClashBox_LTS_V1_unsigned.hap"
end
