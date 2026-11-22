cask "pilinara" do
  version "2.6.2"
  sha256 arm64_linux: "2a0cff688c733a195761118f1720b17039328e0daff642f10a98048aada760e6"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-ohos-2/PiliNara_ohos_2.6.2-ohos-2_unsigned.hap"
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

  ohos_app "PiliNara_ohos_2.6.2-ohos-2_unsigned.hap"
end
