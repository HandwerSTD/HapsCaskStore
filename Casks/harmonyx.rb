cask "harmonyx" do
  version "2.7.0"
  sha256 arm64_linux: "77368d346728f0d1710dcd66f29565b1847f095c04828fd3c916e000d8437160"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v2.7.0-unsigned.hap"
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

  ohos_app "HarmonyX-v2.7.0-unsigned.hap"
end
