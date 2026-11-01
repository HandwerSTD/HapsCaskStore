cask "lvlian-view-hm" do
  version "1.0.15"
  sha256 arm64_linux: "9c5ea0684598e37f80185949e24b580e83ba989ee78377c95f79ba142eab8150"

  url "https://github.com/fhf2022/lvlian-view-hm/releases/download/v#{version}/LinkFiles-1.0.15-release.hap"
  name "联文件"
  desc "绿联 NAS 鸿蒙文件管理器，支持图片浏览与文件传输"
  homepage "https://github.com/fhf2022/lvlian-view-hm"

  livecheck do
    url "https://github.com/fhf2022/lvlian-view-hm"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "LinkFiles-1.0.15-release.hap"
end
