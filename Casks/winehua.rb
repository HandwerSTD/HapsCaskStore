cask "winehua" do
  version "1.0.32"
  sha256 arm64_linux: "36dd59986bc0b88228cc3747f4fb28da1a0b3a7f52565b3d0ad784cae497127d"

  url "https://github.com/winehua/WineHua/releases/download/rc-#{version}/entry-default-unsigned.hap"
  name "万花"
  desc "在鸿蒙上运行Windows程序的兼容层工具"
  homepage "https://github.com/winehua/WineHua"

  livecheck do
    url "https://github.com/winehua/WineHua"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
