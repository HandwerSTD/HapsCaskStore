cask "harmonyos-book" do
  version "0.1.27"
  sha256 arm64_linux: "f40be35a0d4996343ec5574e2a693e154e67fd0d9571c69de9c53a8aa2b42be8"

  url "https://github.com/end-web/HarmonyOS-book/releases/download/v#{version}/JianTing-v0.1.27.hap"
  name "简听"
  desc "面向鸿蒙手机的听书与小说阅读 App"
  homepage "https://github.com/end-web/HarmonyOS-book"

  livecheck do
    url "https://github.com/end-web/HarmonyOS-book"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "JianTing-v0.1.27.hap"
end
