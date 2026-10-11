cask "homenapod" do
  version "1.0.17"
  sha256 arm64_linux: "caffa5e36ca5035120dc67eb452596ee305bf3b71557cc1a1cd43fbcfeaf70f9"

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
