cask "zhihu-plus-plus-hmos" do
  version "0.6.0"
  sha256 arm64_linux: "2da059866ab0114f20f217d856ebb942618e12613fc8398eb90ec5416cefe09d"

  url "https://github.com/zhuoyi233/zhihu-plus-plus-HMOS/releases/download/HMOSv#{version}/ZhihuPlusPlus-HMOS-v0.6.0-unsigned.hap"
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

  ohos_app "ZhihuPlusPlus-HMOS-v0.6.0-unsigned.hap"
end
