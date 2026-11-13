cask "quietstart" do
  version "1.3.0"
  sha256 arm64_linux: "dc2aa6d84057661747dada2a1b6727eacbe0b50415931227e02d6bde390b517f"

  url "https://github.com/thx853068675-dev/quietstart/releases/download/v#{version}-preview-130001/quietstart-1.3.0-preview-130001.hap"
  name "轻启"
  desc "鸿蒙原生页面控件识别工具，自动跳过广告开屏"
  homepage "https://github.com/thx853068675-dev/quietstart"

  livecheck do
    url "https://github.com/thx853068675-dev/quietstart"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "quietstart-1.3.0-preview-130001.hap"
end
