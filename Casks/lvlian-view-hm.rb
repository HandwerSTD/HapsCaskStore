cask "lvlian-view-hm" do
  version "1.0.21"
  sha256 arm64_linux: "4b44083d25ba9447acad7ad2eb5b118d8943dd5f1b19aa23f08ff92ca411fd66"

  url "https://github.com/fhf2022/lvlian-view-hm/releases/download/v#{version}/LinkFiles-1.0.21-release.hap"
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

  ohos_app "LinkFiles-1.0.21-release.hap"
end
