cask "livify-ohos" do
  version "1.1.0"
  sha256 arm64_linux: "37604c1efea32c7a746775b5128df7fbf9ff9ce0541d603c83620f8fc0dc38c8"

  url "https://github.com/yabi-zzh/livify-ohos/releases/download/v#{version}/LiVify-1.1.0.hap"
  name "聚映"
  desc "支持多平台直播观看与弹幕的鸿蒙原生聚合应用"
  homepage "https://github.com/yabi-zzh/livify-ohos"

  livecheck do
    url "https://github.com/yabi-zzh/livify-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "LiVify-1.1.0.hap"
end
