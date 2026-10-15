cask "copyhomo" do
  version "1.2.1"
  sha256 arm64_linux: "a7f38ed03150868e5258dc99142b0b17eea2f5a4c69344b4eede112662c43978"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.2.1.hap"
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

  ohos_app "copyhomo1.2.1.hap"
end
