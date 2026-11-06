cask "homowarden" do
  version "2.0.3"
  sha256 arm64_linux: "f08d5a204ef0db817b30c376dd2ab344f5e240a73674dab17dcb6fd28222cce3"

  url "https://github.com/DreamistW/Homowarden/releases/download/oh-v#{version}/Homowarden-OpenHarmony-2.0.3-fb31198-release-unsigned.hap"
  name "Homowarden"
  desc "鸿蒙版Bitwarden密码管理器，支持自托管服务器"
  homepage "https://github.com/DreamistW/Homowarden"

  livecheck do
    url "https://github.com/DreamistW/Homowarden"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Homowarden-OpenHarmony-2.0.3-fb31198-release-unsigned.hap"
end
