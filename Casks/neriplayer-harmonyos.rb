cask "neriplayer-harmonyos" do
  version "1.4.0"
  sha256 arm64_linux: "2a88651d853134318df5895af0bd893d4e8650840322385bd5ab1014e6268828"

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
