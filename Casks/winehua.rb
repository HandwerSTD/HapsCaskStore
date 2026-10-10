cask "winehua" do
  version "1.0.31"
  sha256 arm64_linux: "b985217a1ae247cd1a6feee377f0e9a281e233bf3c22c2105788bcaf92946c75"

  url "https://github.com/winehua/WineHua/releases/download/rc-#{version}/WineHua-rc-1.0.31-arm64-v8a-unsigned.hap"
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

  ohos_app "WineHua-rc-1.0.31-arm64-v8a-unsigned.hap"
end
