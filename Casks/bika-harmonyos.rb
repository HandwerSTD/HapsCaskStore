cask "bika-harmonyos" do
  version "1.5.2"
  sha256 arm64_linux: "8a0b57dfcd73ef3ed4fa8846473984ceccc3514fab77528b9b42965ef32e0151"

  url "https://github.com/LoMoCatAp/Bika-HarmonyOS/releases/download/v#{version}/Bika-HarmonyOS-1.5.2.hap"
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

  ohos_app "Bika-HarmonyOS-1.5.2.hap"
end
