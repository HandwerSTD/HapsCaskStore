cask "harmonyx" do
  version "2.5.0"
  sha256 arm64_linux: "3aa03bc94c055f433c84c0e82d27d9732e2a586893bb4dc1829bbb226e27552a"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v2.5.0-unsigned.hap"
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

  ohos_app "HarmonyX-v2.5.0-unsigned.hap"
end
