cask "harmonyx" do
  version "3.2.0"
  sha256 arm64_linux: "4e65e3af3374738c707b80a0cbec682548e4a4459af2e85eef7b8d67cbc2ca45"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.2.0-unsigned.hap"
  name "Harmony X"
  desc "面向 HarmonyOS 的原生 X 客户端"
  homepage "https://github.com/haohaoai0/HarmonyX"

  livecheck do
    url "https://github.com/haohaoai0/HarmonyX"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "HarmonyX-v3.2.0-unsigned.hap"
end
