cask "mindustryark" do
  version "1.3.1.1"
  sha256 arm64_linux: "03781be2d7a76b46f4235a5ed75430732953a02a4d5c6090ed1570b8809686c8"

  url "https://github.com/haohandc/MindustryArk/releases/download/v#{version}/MindustryArk-v1.3.1.1-unsigned.hap"
  name "MindustryArk"
  desc "在鸿蒙上运行Mindustry游戏的自建启动器，内嵌JDK与SDL3窗口"
  homepage "https://github.com/haohandc/MindustryArk"

  livecheck do
    url "https://github.com/haohandc/MindustryArk"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "MindustryArk-v1.3.1.1-unsigned.hap"
end
