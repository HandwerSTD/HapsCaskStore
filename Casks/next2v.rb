cask "next2v" do
  version "1.0.14"
  sha256 arm64_linux: "fea736c6c733286dadefe28da24b0db7ca9f4ff77d013809bfc514ecc1f5a6d1"

  url "https://github.com/honjow/Next2V/releases/download/v#{version}/Next2V_1.0.14_ohos-release-unsigned.hap"
  name "Next2V"
  desc "一款面向 HarmonyOS 的原生 V2EX 第三方客户端，支持主题浏览、回复发帖、节点发现与搜索"
  homepage "https://github.com/honjow/Next2V"

  livecheck do
    url "https://github.com/honjow/Next2V"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Next2V_1.0.14_ohos-release-unsigned.hap"
end
