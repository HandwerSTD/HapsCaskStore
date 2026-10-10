cask "copyhomo" do
  version "1.0.2"
  sha256 arm64_linux: "3fc1e294ebaa6c7220c201ddc6d2a884312656ea534ea500350e0a6e548ae93d"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/1.0.2-api23%2B.hap"
  name "拷贝漫画"
  desc "原生鸿蒙拷贝漫画客户端，支持手机与平板阅读"
  homepage "https://github.com/point258/copyhomo"

  livecheck do
    url "https://github.com/point258/copyhomo"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "1.0.2-api23+.hap"
end
