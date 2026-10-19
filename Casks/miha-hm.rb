cask "miha-hm" do
  version "1.1.9"
  sha256 arm64_linux: "463bfc4d78a23a2df511ba458656246b2a9ebfffe0fa553347bcbe385a66288c"

  url "https://github.com/MrCashmere/miha_hm/releases/download/v#{version}/1.1.9-release-unsigned.hap"
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

  ohos_app "1.1.9-release-unsigned.hap"
end
