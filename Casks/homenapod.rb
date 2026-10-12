cask "homenapod" do
  version "1.0.18"
  sha256 arm64_linux: "0ad8a012485a33aabd3c821fbead8f83aa12eefd6629a51e173a10fe6ee1d8ef"

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
