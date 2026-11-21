cask "kazumi" do
  version "2.4.5"
  sha256 arm64_linux: "8021a63804df95f24920f7948c7bb7041169f5f8147aaeb53b1c0f2b00b4a9d1"

  url "https://github.com/ErBWs/Kazumi/releases/download/#{version}/Kazumi_ohos_2.4.5_unsigned.hap"
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

  ohos_app "Kazumi_ohos_2.4.5_unsigned.hap"
end
