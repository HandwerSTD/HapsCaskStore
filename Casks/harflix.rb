cask "harflix" do
  version "1.0.6"
  sha256 arm64_linux: "f5ec0573878007ebb6ea438539966f05e5d4a0a7bbeee3063967aaa9c89ec9a4"

  url "https://github.com/Actrlq/Harflix/releases/download/V#{version}/Harflix-V1.0.6-unsigned.hap"
  name "Harflix"
  desc "一款支持Emby协议的播放器"
  homepage "https://github.com/Actrlq/Harflix"

  livecheck do
    url "https://github.com/Actrlq/Harflix"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Harflix-V1.0.6-unsigned.hap"
end
