cask "immich-ohos" do
  version "3.2.1"
  sha256 arm64_linux: "4bea9c5c057454a9d081c5e6fc4b3ed3ce7f557da27100dcc49202fc46da3736"

  url "https://github.com/dgh1818/immich_ohos/releases/download/v#{version}-ohos-v0.0.5/entry-default-signed.hap"
  name "immich"
  desc "一款连接 Immich 私人照片和视频备份服务器的鸿蒙客户端，用于在鸿蒙设备上浏览和管理个人媒体库"
  homepage "https://github.com/dgh1818/immich_ohos"

  livecheck do
    url "https://github.com/dgh1818/immich_ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
