cask "bika-harmonyos" do
  version "1.4.6"
  sha256 arm64_linux: "7e45bb0b4a13495f9a420bd1f8ee2c87da988b4da9207724dbfd112f09b9c9bf"

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
