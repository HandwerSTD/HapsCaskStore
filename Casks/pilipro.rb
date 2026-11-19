cask "pilipro" do
  version "2.2.1"
  sha256 arm64_linux: "3bb24d0c4b8d77cfd6cf9180ea7aa2e12db3dfffed10f052efac910c9bbcfd41"

  url "https://github.com/Oearawa/PiliPro/releases/download/#{version}-ohos-2/PiliPro-2.2.1-ohos-2-unsigned.hap"
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

  ohos_app "PiliPro-2.2.1-ohos-2-unsigned.hap"
end
