cask "zhihu-plus-plus-hmos" do
  version "0.5.7"
  sha256 arm64_linux: "40b760b6251fbc4c1fe94dd52e9d909b1d0ed48c629d9d5fe962e731d2c3decf"

  url "https://github.com/zhuoyi233/zhihu-plus-plus-HMOS/releases/download/HMOSv#{version}/ZhihuPlusPlus-HMOS-v0.5.7-unsigned.hap"
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

  ohos_app "ZhihuPlusPlus-HMOS-v0.5.7-unsigned.hap"
end
