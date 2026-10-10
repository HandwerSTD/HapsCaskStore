cask "melotopia-hmos" do
  version "1.15.3"
  sha256 arm64_linux: "69491894a543f9d38abf2af11b1be1549d0ed44ff1ea770fe06d1db7e87851de"

  url "https://github.com/Chenlvin/Melotopia-HMOS/releases/download/v#{version}/1.15.3-101539.hap"
  name "Melotopia"
  desc "鸿蒙原生音乐播放器，支持本地曲库与在线播放"
  homepage "https://github.com/Chenlvin/Melotopia-HMOS"

  livecheck do
    url "https://github.com/Chenlvin/Melotopia-HMOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "1.15.3-101539.hap"
end
