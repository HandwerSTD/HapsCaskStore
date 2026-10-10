cask "copyhomo" do
  version "1.0.5.5"
  sha256 arm64_linux: "f2406e55713794bf8c0b0dec55a9ab89b4f5b4de316360574de26a192adced05"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.0.5.5-23%2B.hap"
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

  ohos_app "copyhomo1.0.5.5-23+.hap"
end
