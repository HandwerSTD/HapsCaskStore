cask "next2v" do
  version "1.0.12"
  sha256 arm64_linux: "9669b88f094219edf90e32a3c0070095ee76e8cb3afdf96e1c53089dbc4086f7"

  url "https://github.com/honjow/Next2V/releases/download/v#{version}/Next2V_1.0.12_ohos-release-unsigned.hap"
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

  ohos_app "Next2V_1.0.12_ohos-release-unsigned.hap"
end
