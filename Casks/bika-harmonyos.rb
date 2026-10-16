cask "bika-harmonyos" do
  version "1.4.5"
  sha256 arm64_linux: "11bbdf5197852e1ff26377d1b7b199e87da7e2eb0855ee991655e6437ebed682"

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
