cask "jellyfin-harmonyos" do
  version "1.0.4"
  sha256 arm64_linux: "4799befd83cedc15a450030c89741896c694c4b6758bd727bcf8aa53a3c5c44a"

  url "https://github.com/chashaochang/JellyFin_HarmonyOS/releases/download/v#{version}/jellyfin_v1.0.4_unsigned.hap"
  name "JellyFin"
  desc "鸿蒙非官方 Jellyfin 客户端，支持播放、字幕与投屏"
  homepage "https://github.com/chashaochang/JellyFin_HarmonyOS"

  livecheck do
    url "https://github.com/chashaochang/JellyFin_HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "jellyfin_v1.0.4_unsigned.hap"
end
