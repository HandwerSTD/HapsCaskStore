cask "next2v" do
  version "1.0.11"
  sha256 arm64_linux: "edd26bf6c71b3da62af15c03cb48d6e49d6e424ff65ba239e2299038ca397752"

  url "https://github.com/honjow/Next2V/releases/download/v#{version}/Next2V_1.0.11_ohos-release-unsigned.hap"
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

  ohos_app "Next2V_1.0.11_ohos-release-unsigned.hap"
end
