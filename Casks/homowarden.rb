cask "homowarden" do
  version "2.0.4"
  sha256 arm64_linux: "179c2a7d93991aae5d8200b237b6f356aed7de9a7c643bc75ccce64fb9dacb2a"

  url "https://github.com/DreamistW/Homowarden/releases/download/oh-v#{version}/Homowarden-OpenHarmony-2.0.4-82f4c42-release-unsigned.hap"
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

  ohos_app "Homowarden-OpenHarmony-2.0.4-82f4c42-release-unsigned.hap"
end
