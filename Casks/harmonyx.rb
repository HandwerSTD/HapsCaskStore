cask "harmonyx" do
  version "3.1.0"
  sha256 arm64_linux: "83ef6bbfdc3d7132afd5ec9e2c8ba9df73ea75dfba58284ccb9ce399a443b652"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.1.0-unsigned.hap"
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

  ohos_app "HarmonyX-v3.1.0-unsigned.hap"
end
