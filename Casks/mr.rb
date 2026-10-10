cask "mr" do
  version "2026-09-12"
  sha256 arm64_linux: "44e0145fdb2bed3e46b2c0fcf4d0197fe9d3569bf0c77ec8bec1352473a1b02b"

  url "https://github.com/DandanLLab/mr/releases/download/v2609127-dev/mr_v2609127_dev_#{version}_ohos.hap"
  name "MR"
  desc "基于Flutter的跨平台多媒体阅读器，兼容阅读书源规则"
  homepage "https://github.com/DandanLLab/mr"

  livecheck do
    url "https://github.com/DandanLLab/mr"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "mr_v2609127_dev_2026-09-12_ohos.hap"
end
