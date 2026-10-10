cask "oh-openttd" do
  version "15.3"
  sha256 arm64_linux: "f68ad55b23fe6e005ce964080d9fe9d94832a00349fb355777c0c81aa096729f"

  url "https://github.com/TennousuAthena/OH-OpenTTD/releases/download/#{version}-harmonyos.2/openttd-15.3-harmonyos.2-93e0ab3519.hap"
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

  ohos_app "openttd-15.3-harmonyos.2-93e0ab3519.hap"
end
