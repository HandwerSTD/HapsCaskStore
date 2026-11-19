cask "harmonyx" do
  version "4.2.5"
  sha256 arm64_linux: "71a39f0cbf2fac7750f57ac0a7d4609f16fa843366a17b146fec234e45b93bda"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v4.2.5-unsigned.hap"
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

  ohos_app "HarmonyX-v4.2.5-unsigned.hap"
end
