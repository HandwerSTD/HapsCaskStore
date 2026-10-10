cask "servo" do
  version "0.7.0"
  sha256 arm64_linux: "66c8fcdd555383768cbe13a31ca2f7c65a71e8a91e67bef302906b0dcb057c13"

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
