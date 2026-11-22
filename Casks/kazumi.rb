cask "kazumi" do
  version "2.4.6"
  sha256 arm64_linux: "80fd35ab7335e90f37df043de3f3e59f86d1102f43d488fff1f6fb6a0aa2bbdd"

  url "https://github.com/ErBWs/Kazumi/releases/download/#{version}/Kazumi_ohos_2.4.6_unsigned.hap"
  name "Kazumi"
  desc "基于自定义规则的番剧聚合观看应用，支持Anime4K超分辨率"
  homepage "https://github.com/ErBWs/Kazumi"

  livecheck do
    url "https://github.com/ErBWs/Kazumi"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Kazumi_ohos_2.4.6_unsigned.hap"
end
