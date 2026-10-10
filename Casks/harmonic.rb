cask "harmonic" do
  version "2.1.7"
  sha256 arm64_linux: "e1b6c6433f484d4c9302909fabc81e675105cb1098a40c71b44cfc28a48175e9"

  url "https://github.com/shanyan-wcx/Harmonic/releases/download/v#{version}/entry-default-unsigned.hap"
  name "Harmonic"
  desc "连接 Navidrome 音乐服务器的鸿蒙原生客户端"
  homepage "https://github.com/shanyan-wcx/Harmonic"

  livecheck do
    url "https://github.com/shanyan-wcx/Harmonic"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
