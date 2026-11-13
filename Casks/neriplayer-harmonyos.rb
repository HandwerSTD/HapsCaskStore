cask "neriplayer-harmonyos" do
  version "1.4.0"
  sha256 arm64_linux: "299db564e7df8d139493f33aca81209aeef3a96d7c8536a32525a3ed8bd0d9a2"

  url "https://github.com/suyunxing/NeriPlayer-HarmonyOS/releases/download/v#{version}/NeriPlayer-v1.4.0-unsigned.hap"
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

  ohos_app "NeriPlayer-v1.4.0-unsigned.hap"
end
