cask "pilipro" do
  version "2.2.1"
  sha256 arm64_linux: "3313c0e7f149b35f09589076990cec1bf97a44a8621a81fe0c22c31b1bbc120c"

  url "https://github.com/Oearawa/PiliPro/releases/download/#{version}-ohos-3/PiliPro-2.2.1-ohos-3-unsigned.hap"
  name "PiliPro"
  desc "基于 PiliPlus 的鸿蒙 B 站客户端"
  homepage "https://github.com/Oearawa/PiliPro"

  livecheck do
    url "https://github.com/Oearawa/PiliPro"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "PiliPro-2.2.1-ohos-3-unsigned.hap"
end
