cask "kazumi" do
  version "2.3.1"
  sha256 arm64_linux: "5124494ea57eeda4cd97863331ff8af02baac0b0e7c3146fbe1ca01e76dad498"

  url "https://github.com/ErBWs/Kazumi/releases/download/#{version}/Kazumi_ohos_2.3.1_unsigned.hap"
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

  ohos_app "Kazumi_ohos_2.3.1_unsigned.hap"
end
