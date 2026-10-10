cask "homenapod" do
  version "1.0.15"
  sha256 arm64_linux: "6335f5eec6487076da7461b228857bd83a118fcfb4585599c8097021c554cf20"

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
