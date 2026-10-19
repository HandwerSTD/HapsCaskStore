cask "kazumi" do
  version "2.3.9"
  sha256 arm64_linux: "852b3d8a6502243f50e4cd82783b4eb574a35203f8c39bb4bf6c094524358c43"

  url "https://github.com/ErBWs/Kazumi/releases/download/#{version}/Kazumi_ohos_2.3.9_unsigned.hap"
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

  ohos_app "Kazumi_ohos_2.3.9_unsigned.hap"
end
