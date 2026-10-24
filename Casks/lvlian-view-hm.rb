cask "lvlian-view-hm" do
  version "1.0.11"
  sha256 arm64_linux: "d415130f20e024f7299c0f90e8773656f9cf37056f29376e7d94f3538fccfa6a"

  url "https://github.com/fhf2022/lvlian-view-hm/releases/download/v#{version}/LinkFiles-1.0.11-release.hap"
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

  ohos_app "LinkFiles-1.0.11-release.hap"
end
