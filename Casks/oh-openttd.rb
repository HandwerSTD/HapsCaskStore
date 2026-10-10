cask "oh-openttd" do
  version "15.3"
  sha256 arm64_linux: "c6f69181c507ff994173ab7315b7606e48919b81014b28a364531e42ce878503"

  url "https://github.com/TennousuAthena/OH-OpenTTD/releases/download/#{version}-harmonyos.2/openttd-15.3-harmonyos.2-93e0ab3519-signed.hap"
  name "OpenTTD"
  desc "基于运输大亨的鸿蒙交通运输模拟经营游戏"
  homepage "https://github.com/TennousuAthena/OH-OpenTTD"

  livecheck do
    url "https://github.com/TennousuAthena/OH-OpenTTD"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "openttd-15.3-harmonyos.2-93e0ab3519-signed.hap"
end
