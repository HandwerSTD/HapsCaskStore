cask "copyhomo" do
  version "1.3.5"
  sha256 arm64_linux: "09eebf241fa3a8f25df5da79841341af743f8b3375d887a726f1d469c7ab73ec"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.3.5.hap"
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

  ohos_app "copyhomo1.3.5.hap"
end
