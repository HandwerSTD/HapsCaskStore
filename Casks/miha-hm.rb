cask "miha-hm" do
  version "1.1.5"
  sha256 arm64_linux: "36e1458478e629baf58e975a2824a5730c954103bf6c7d715813dc0cbc836415"

  url "https://github.com/MrCashmere/miha_hm/releases/download/v#{version}/1.1.5-OS.hap"
  name "鸿米家"
  desc "基于鸿蒙NEXT原生开发的小米米家设备控制应用"
  homepage "https://github.com/MrCashmere/miha_hm"

  livecheck do
    url "https://github.com/MrCashmere/miha_hm"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "1.1.5-OS.hap"
end
