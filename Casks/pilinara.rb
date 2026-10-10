cask "pilinara" do
  version "2.1.5.1"
  sha256 arm64_linux: "4ac7f8a830189d5998bd9963db7c75901486484e696fd44983e695629f00c375"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-Pearl-ohos/PiliNara_ohos_2.1.5.1-Pearl-ohos_unsigned.hap"
  name "PiliNara"
  desc "基于 PiliPlus 魔改的 B 站第三方客户端鸿蒙版"
  homepage "https://github.com/dev4harmony/PiliNara"

  livecheck do
    url "https://github.com/dev4harmony/PiliNara"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "PiliNara_ohos_2.1.5.1-Pearl-ohos_unsigned.hap"
end
