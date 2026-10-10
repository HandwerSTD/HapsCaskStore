cask "shuati" do
  version :latest
  sha256 :no_check

  url "https://github.com/xiaomoHM/ShuaTi/releases/latest/download/ShuaTiBao108.hap"
  name "刷题宝"
  desc "离线刷题应用，支持多套试卷、错题本与随机练习"
  homepage "https://github.com/xiaomoHM/ShuaTi"

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "ShuaTiBao108.hap"
end
