cask "immich-ohos" do
  version "3.3.5"
  sha256 arm64_linux: "cd77e8348b59f9311084b980c2ad5bffa00f76f72974dd320a6ab20cd4f87692"

  url "https://github.com/dgh1818/immich_ohos/releases/download/v#{version}-ohos-v0.0.1/entry-default-signed.hap"
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
