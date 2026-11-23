cask "bika-harmonyos" do
  version "1.5.3"
  sha256 arm64_linux: "c7bb21ab5f9bfd117f91697be94507a70f807a97a7aa1593c7133dcb51df9b90"

  url "https://github.com/LoMoCatAp/Bika-HarmonyOS/releases/download/v#{version}/Bika-HarmonyOS-1.5.3.hap"
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

  ohos_app "Bika-HarmonyOS-1.5.3.hap"
end
