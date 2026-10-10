cask "hlib" do
  version "1.0.1"
  sha256 arm64_linux: "b263cc275a22bf30bc01c46f55fef4dde61b1c014f7426c02fc252191b6064f4"

  url "https://github.com/LZZLHY/hlib/releases/download/v#{version}/hlib-1.0.1-unsigned.hap"
  name "海阅"
  desc "基于 Z-Library 镜像的电子书客户端，支持搜索、阅读与下载"
  homepage "https://github.com/LZZLHY/hlib"

  livecheck do
    url "https://github.com/LZZLHY/hlib"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "hlib-1.0.1-unsigned.hap"
end
