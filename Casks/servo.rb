cask "servo" do
  version "0.8.0"
  sha256 arm64_linux: "e92a7154c144e948105a59f2dca28e6e523fba9c57c7dee32f98e6a695fdc6e0"

  url "https://github.com/servo/servo/releases/download/v#{version}/servo-aarch64-linux-ohos.hap"
  name "Servo"
  desc "一个用 Rust 语言编写的浏览器内核的浏览器"
  homepage "https://github.com/servo/servo"

  livecheck do
    url "https://github.com/servo/servo"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "servo-aarch64-linux-ohos.hap"
end
