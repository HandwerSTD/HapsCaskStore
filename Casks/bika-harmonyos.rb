cask "bika-harmonyos" do
  version "1.4.3"
  sha256 arm64_linux: "56df14fc20a7085dd5d3e93cf046000c913760e3b3d0086ffded28a3c684d87f"

  url "https://github.com/LoMoCatAp/Bika-HarmonyOS/releases/download/v#{version}/entry-default-unsigned.hap"
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

  ohos_app "entry-default-unsigned.hap"
end
