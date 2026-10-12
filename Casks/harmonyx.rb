cask "harmonyx" do
  version "2.8.0"
  sha256 arm64_linux: "1cf43b14917934132e409b3fdcc07ecd8165de0526a2ac51489b44d6f5d619a5"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v2.8.0-unsigned.hap"
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

  ohos_app "HarmonyX-v2.8.0-unsigned.hap"
end
