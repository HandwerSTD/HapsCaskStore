cask "mindustryark" do
  version "1.3.3.2"
  sha256 arm64_linux: "3b5b1bd03618fb7f1d48bf3f7d6411c6b89a23c0e009a7d1c284e3debce822cc"

  url "https://github.com/haohandc/MindustryArk/releases/download/v#{version}/MindustryArk-v1.3.3.2-unsigned.hap"
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

  ohos_app "MindustryArk-v1.3.3.2-unsigned.hap"
end
