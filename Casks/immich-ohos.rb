cask "immich-ohos" do
  version "3.3.5"
  sha256 arm64_linux: "8fb1082047602dbe7172db1df4c24fc046bdf0aab8db474d9ea2b523e0d16d44"

  url "https://github.com/dgh1818/immich_ohos/releases/download/v#{version}-ohos-v0.0.3/entry-default-signed.hap"
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
