cask "next2v" do
  version "1.0.10"
  sha256 arm64_linux: "6f2b6165101aef7b9bff8bd24429b04cc007ae4c61c1ef26b4eb8885ce7df1ee"

  url "https://github.com/honjow/Next2V/releases/download/v#{version}/Next2V_1.0.10_ohos-release-unsigned.hap"
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

  ohos_app "Next2V_1.0.10_ohos-release-unsigned.hap"
end
