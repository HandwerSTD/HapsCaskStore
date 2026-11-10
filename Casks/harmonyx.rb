cask "harmonyx" do
  version "3.9.0"
  sha256 arm64_linux: "3f68442328d73aca29888df457dd6f4c88d77390c1d5278dffbb81920b944438"

  url "https://github.com/haohaoai0/HarmonyX/releases/download/v#{version}/entry-default-signed.hap"
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

  ohos_app "entry-default-signed.hap"
end
