cask "neriplayer-harmonyos" do
  version "1.4.0"
  sha256 arm64_linux: "195f92d73f6751f093ec4966b44bb1284e09c0f1de439b5a161eba65b67191f9"

  url "https://github.com/suyunxing/NeriPlayer-HarmonyOS/releases/download/v#{version}-rc.4/NeriPlayer-v1.4.0-rc.4-unsigned.hap"
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

  ohos_app "NeriPlayer-v1.4.0-rc.4-unsigned.hap"
end
