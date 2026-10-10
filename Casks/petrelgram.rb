cask "petrelgram" do
  version "1.4.8"
  sha256 arm64_linux: "efe26b40b5548c770b476bf16dd4657fd76a5da51cfc78b822cfe3f05b0e9cf7"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}-pv1/Petrelgram-1.4.8-pv1-unsigned.hap"
  name "Petrelgram"
  desc "第三方鸿蒙版，基于 TDLib 的 Telegram 客户端，支持多账号与音视频通话"
  homepage "https://github.com/miramira8295/Petrelgram"

  livecheck do
    url "https://github.com/miramira8295/Petrelgram"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Petrelgram-1.4.8-pv1-unsigned.hap"
end
