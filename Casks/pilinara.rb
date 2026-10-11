cask "pilinara" do
  version "2.1.5.1"
  sha256 arm64_linux: "092d4fb08518d4e660c90fbfcb6739c70e6513aa3489e80892c475a648a25f19"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-Pearl-ohos-2/PiliNara_ohos_2.1.5.1-Pearl-ohos-2_unsigned.hap"
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

  ohos_app "PiliNara_ohos_2.1.5.1-Pearl-ohos-2_unsigned.hap"
end
