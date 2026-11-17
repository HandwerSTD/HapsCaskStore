cask "neriplayer-harmonyos" do
  version "1.5.0"
  sha256 arm64_linux: "0fda4e98a0777fce758b4f22962cb6af3fca9d52b2d7040be39c57bcbb3b2f23"

  url "https://github.com/suyunxing/NeriPlayer-HarmonyOS/releases/download/v#{version}-rc.1/NeriPlayer-v1.5.0-rc.1-unsigned.hap"
  name "音理音理!"
  desc "鸿蒙多源音乐播放器，支持网易云与 B 站音频"
  homepage "https://github.com/suyunxing/NeriPlayer-HarmonyOS"

  livecheck do
    url "https://github.com/suyunxing/NeriPlayer-HarmonyOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NeriPlayer-v1.5.0-rc.1-unsigned.hap"
end
