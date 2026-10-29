cask "hapstore" do
  version "1.0.2"
  sha256 arm64_linux: "db601611d02b3d2c40852a84bdf5dff24ed921d068bcf4b71a98631ec98fb84b"

  url "https://github.com/zhailinlang/hapstore/releases/download/v#{version}/HapStore-v1.0.2-signed.hap"
  name "HapStore"
  desc "未上架 HAP 的聚合目录应用，可浏览、搜索与下载"
  homepage "https://github.com/zhailinlang/hapstore"

  livecheck do
    url "https://github.com/zhailinlang/hapstore"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "HapStore-v1.0.2-signed.hap"
end
