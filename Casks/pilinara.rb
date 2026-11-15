cask "pilinara" do
  version "2.6.2"
  sha256 arm64_linux: "f1a5c2f37d4365f0c3fe15c4b342cd634651fc7d62e1d32bc82187da5fe0f4a5"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-ohos/PiliNara_ohos_2.6.2-ohos_unsigned.hap"
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

  ohos_app "PiliNara_ohos_2.6.2-ohos_unsigned.hap"
end
