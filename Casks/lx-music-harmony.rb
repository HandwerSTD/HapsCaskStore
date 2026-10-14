cask "lx-music-harmony" do
  version "1.0.0"
  sha256 arm64_linux: "5a932124509ee4563efe4fa558988fb7b94363f4173170d56c50ad941c93e69b"

  url "https://github.com/k-brother/lx-music-harmony/releases/download/v#{version}/lx-music-harmony-v1.0.0-signed.hap"
  name "洛雪音乐"
  desc "洛雪音乐鸿蒙原生版，支持多音源与本地播放"
  homepage "https://github.com/k-brother/lx-music-harmony"

  livecheck do
    url "https://github.com/k-brother/lx-music-harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "lx-music-harmony-v1.0.0-signed.hap"
end
