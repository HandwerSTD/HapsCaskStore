cask "diplay-harmony" do
  version "0.13.11"
  sha256 arm64_linux: "bd5582954e31d0ac7eda800b4b8f34f5de3b4ca98514764fe83fb80eec1c4027"

  url "https://github.com/Tedfaraday/DiPlay-Harmony/releases/download/v#{version}-preview/DiPlayHarmony-0.13.11-unsigned.hap"
  name "DiPlay Harmony"
  desc "鸿蒙平板无线 CarPlay 显示接收端"
  homepage "https://github.com/Tedfaraday/DiPlay-Harmony"

  livecheck do
    url "https://github.com/Tedfaraday/DiPlay-Harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "DiPlayHarmony-0.13.11-unsigned.hap"
end
