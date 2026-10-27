cask "harmonyx" do
  version "3.6.0"
  sha256 arm64_linux: "f16e2fa6b90e65dd1dd4de6eb0039952bc943bc0560658cab41a22bd805eec11"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.6.0-unsigned.hap"
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

  ohos_app "HarmonyX-v3.6.0-unsigned.hap"
end
