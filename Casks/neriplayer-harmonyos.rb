cask "neriplayer-harmonyos" do
  version "1.4.0"
  sha256 arm64_linux: "aad9566c569c1b9acc7f4c48bc0ab03110755922b1915c39b8388208117dcceb"

  url "https://github.com/suyunxing/NeriPlayer-HarmonyOS/releases/download/v#{version}-rc.3/NeriPlayer-v1.4.0-rc.3-unsigned.hap"
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

  ohos_app "NeriPlayer-v1.4.0-rc.3-unsigned.hap"
end
