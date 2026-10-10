cask "petrelgram" do
  version "1.5.3"
  sha256 arm64_linux: "af32b6cb813d3a91ed5f61f249be1de1891ceb324ffb0c6197fbea95ffd092a4"

  url "https://github.com/miramira8295/Petrelgram/releases/download/v#{version}/Petrelgram-1.5.3-unsigned.hap"
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

  ohos_app "Petrelgram-1.5.3-unsigned.hap"
end
