cask "homenapod" do
  version "1.0.19"
  sha256 arm64_linux: "d5d9c24afac7230c61614b04d9fe8ef06201afa69f40f0792ed9aa687a237562"

  url "https://github.com/TomoeMami/HomenaPod/releases/download/v#{version}/entry-default-unsigned.hap"
  name "HomenaPod"
  desc "AntennaPod 鸿蒙原生移植版，播客订阅与播放管理器"
  homepage "https://github.com/TomoeMami/HomenaPod"

  livecheck do
    url "https://github.com/TomoeMami/HomenaPod"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
