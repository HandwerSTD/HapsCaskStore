cask "harmonyx" do
  version "3.4.0"
  sha256 arm64_linux: "ea595e932d217ac6159c4f65bc1a0deab8919a65570f82dc853e4dde158b7a4a"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.4.0-unsigned.hap"
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

  ohos_app "HarmonyX-v3.4.0-unsigned.hap"
end
