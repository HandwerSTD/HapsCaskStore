cask "zhihu-plus-plus-hmos" do
  version "0.5.8"
  sha256 arm64_linux: "1b3e8c37946abf580ae39298f401be4ed7d890212d74d011fc22492a77b82a02"

  url "https://github.com/zhuoyi233/zhihu-plus-plus-HMOS/releases/download/HMOSv#{version}/ZhihuPlusPlus-HMOS-v0.5.8-unsigned.hap"
  name "知乎++"
  desc "知乎++ 鸿蒙原生版，注重隐私与去广告的知乎客户端"
  homepage "https://github.com/zhuoyi233/zhihu-plus-plus-HMOS"

  livecheck do
    url "https://github.com/zhuoyi233/zhihu-plus-plus-HMOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ZhihuPlusPlus-HMOS-v0.5.8-unsigned.hap"
end
