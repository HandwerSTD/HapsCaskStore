cask "wpixelgram-for-harmonyos" do
  version "0.1.0"
  sha256 arm64_linux: "c9bbf17da4c2c153c2a4c1dfa0033c432cad3489736516081d51a5a4e44d7c04"

  url "https://github.com/1055235342/Wpixelgram-for-HarmonyOS/releases/download/v#{version}/Wpixelgram-entry-v0.1.0.beta1-signed.hap"
  name "Wpixelgram"
  desc "第三方鸿蒙版Wpixelgram"
  homepage "https://github.com/1055235342/Wpixelgram-for-HarmonyOS"

  livecheck do
    url "https://github.com/1055235342/Wpixelgram-for-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Wpixelgram-entry-v0.1.0.beta1-signed.hap"
end
