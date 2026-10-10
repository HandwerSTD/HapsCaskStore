cask "shuati" do
  version "ShuaTi"
  sha256 arm64_linux: "34fd4152495096dee97912b71b22cd57707a9161a8c647d2782036dbedcb1f7c"

  url "https://github.com/xiaomoHM/ShuaTi/releases/download/#{version}/ShuaTiBao108.hap"
  name "刷题宝"
  desc "离线刷题应用，支持多套试卷、错题本与随机练习"
  homepage "https://github.com/xiaomoHM/ShuaTi"

  livecheck do
    url "https://github.com/xiaomoHM/ShuaTi"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ShuaTiBao108.hap"
end
