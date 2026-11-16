cask "lvlian-view-hm" do
  version "1.0.20"
  sha256 arm64_linux: "fae32a350012c0ad88db28c1a1d7988064947645654883c8acb5003efb596532"

  url "https://github.com/fhf2022/lvlian-view-hm/releases/download/v#{version}/LinkFiles-1.0.20-release.hap"
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

  ohos_app "LinkFiles-1.0.20-release.hap"
end
