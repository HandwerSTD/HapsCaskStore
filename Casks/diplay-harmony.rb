cask "diplay-harmony" do
  version "0.13.11"
  sha256 arm64_linux: "82638b4f499102862400eb88441e41d83c835cdb3c2662d569dbce0d8355d9ae"

  url "https://github.com/Tedfaraday/DiPlay-Harmony/releases/download/v#{version}-preview/DiPlay-Harmony-0.13.11-unsigned.hap"
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

  ohos_app "DiPlay-Harmony-0.13.11-unsigned.hap"
end
