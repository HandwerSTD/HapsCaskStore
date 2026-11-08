cask "pilinara" do
  version "2.1.6.1"
  sha256 arm64_linux: "437bb9db57a8e1d8161dab16bbb3dd691bdfbcce72a62f7878942d8e253872ae"

  url "https://github.com/dev4harmony/PiliNara/releases/download/#{version}-ohos-3/PiliNara_ohos_2.1.6.1-ohos-3_unsigned.hap"
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

  ohos_app "PiliNara_ohos_2.1.6.1-ohos-3_unsigned.hap"
end
