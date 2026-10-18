cask "pilinara" do
  version "2.1.6.1"
  sha256 arm64_linux: "bf3f0ab8de5be0472a1dcf60c080d85376754459bf7a4f340803af11d5da86a9"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-ohos/PiliNara_ohos_2.1.6.1-ohos_unsigned.hap"
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

  ohos_app "PiliNara_ohos_2.1.6.1-ohos_unsigned.hap"
end
