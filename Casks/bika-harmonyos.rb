cask "bika-harmonyos" do
  version "1.4.7"
  sha256 arm64_linux: "b9f74835df4ba98d89f681581c618588a16652454ed9e28907dd4267322d330e"

  url "https://github.com/LoMoCatAp/Bika-HarmonyOS/releases/download/v#{version}/Bika-HarmonyOS-1.4.7.hap"
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

  ohos_app "Bika-HarmonyOS-1.4.7.hap"
end
