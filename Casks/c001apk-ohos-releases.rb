cask "c001apk-ohos-releases" do
  version "1.3.6"
  sha256 arm64_linux: "b1bc15b8ca6f04b8216638f4ce08aac8eada20bb7f88e252a44f207befaf59fc"

  url "https://github.com/muleos/c001apk-ohos-releases/releases/download/v#{version}/c001apk-ohos-1.3.6-unsigned.hap"
  name "酷安"
  desc "酷安第三方鸿蒙客户端，支持应用与话题浏览"
  homepage "https://github.com/muleos/c001apk-ohos-releases"

  livecheck do
    url "https://github.com/muleos/c001apk-ohos-releases"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "c001apk-ohos-1.3.6-unsigned.hap"
end
