cask "harmonyx" do
  version "3.5.0"
  sha256 arm64_linux: "8e671ddbf7ee64f23b7e8697310c0afa08f3a0e64db8bf03462c44042a404cf9"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/HarmonyX-v3.5.0-unsigned.hap"
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

  ohos_app "HarmonyX-v3.5.0-unsigned.hap"
end
