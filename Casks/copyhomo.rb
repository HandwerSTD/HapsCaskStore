cask "copyhomo" do
  version "1.0.5"
  sha256 arm64_linux: "227f38902d9115825a2354e05e3e5cb5ce834635138c56c1876bf5292930e437"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.0.5-23%2B.hap"
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

  ohos_app "copyhomo1.0.5-23+.hap"
end
