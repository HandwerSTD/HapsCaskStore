cask "copyhomo" do
  version "1.2.0"
  sha256 arm64_linux: "92964cee22892407a77fa32ce52e4a771d8d32a81b54c0781af7d9bf903cd846"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.2.0.hap"
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

  ohos_app "copyhomo1.2.0.hap"
end
