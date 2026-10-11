cask "copyhomo" do
  version "1.1.2"
  sha256 arm64_linux: "0cd51e944d4614239fedf767c82f26b9ceb5f814f629b6388627e8296d039b35"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.1.2.hap"
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

  ohos_app "copyhomo1.1.2.hap"
end
