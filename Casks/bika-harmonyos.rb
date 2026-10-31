cask "bika-harmonyos" do
  version "1.5.1"
  sha256 arm64_linux: "0fc29f90e254776a13b33f0b178ae960c23136bd1bd7f26d0d0f30b14e66a938"

  url "https://github.com/LoMoCatAp/Bika-HarmonyOS/releases/download/v#{version}/Bika-HarmonyOS-1.5.1.hap"
  name "哔咔"
  desc "哔咔漫画的鸿蒙原生第三方客户端，支持离线下载"
  homepage "https://github.com/LoMoCatAp/Bika-HarmonyOS"

  livecheck do
    url "https://github.com/LoMoCatAp/Bika-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Bika-HarmonyOS-1.5.1.hap"
end
