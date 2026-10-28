cask "immich-ohos" do
  version "3.3.5"
  sha256 arm64_linux: "085cd11c76e936a2cc2b9117fe52aec2344bda42f20fe6a3d06514b118321f5f"

  url "https://github.com/dgh1818/immich_ohos/releases/download/v#{version}-ohos-v0.0.2/entry-default-signed.hap"
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
