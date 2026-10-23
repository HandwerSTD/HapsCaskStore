cask "kazumi" do
  version "2.4.1"
  sha256 arm64_linux: "349691e70be6df7b4056a9667924f75f04dacf0652a4a58a8f81aea0efdb745f"

  url "https://github.com/ErBWs/Kazumi/releases/download/#{version}/Kazumi_ohos_2.4.1_unsigned.hap"
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

  ohos_app "Kazumi_ohos_2.4.1_unsigned.hap"
end
