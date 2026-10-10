cask "copyhomo" do
  version "1.0.5.1"
  sha256 arm64_linux: "91b00706e44ad0fe74714d6f0defdf8e50f1c9a820ad9ac559cdc02de48b660d"

  url "https://github.com/point258/copyhomo/releases/download/#{version}/copyhomo1.0.5.1-23%2B.hap"
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

  ohos_app "copyhomo1.0.5.1-23+.hap"
end
