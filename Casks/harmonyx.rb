cask "harmonyx" do
  version "3.7.0"
  sha256 arm64_linux: "1b59672b54af11a89843a1d11f8c2891b7782ad5dece91a9f2c0e6196b6ae530"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.7.0-unsigned.hap"
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

  ohos_app "HarmonyX-v3.7.0-unsigned.hap"
end
