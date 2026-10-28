cask "nextn" do
  version "1.0.8"
  sha256 arm64_linux: "ef84a36e5784bbae7b127dc132a341df8a9ef20eb62be80819a1ff9171832d7f"

  url "https://github.com/erosTeam/NextN/releases/download/v#{version}/NextN_1.0.8_ohos-release-unsigned.hap"
  name "NextN"
  desc "一款原生 HarmonyOS NEXT 的 nhentai 非官方客户端，支持画廊浏览、搜索、标签翻译与下载"
  homepage "https://github.com/erosTeam/NextN"

  livecheck do
    url "https://github.com/erosTeam/NextN"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "NextN_1.0.8_ohos-release-unsigned.hap"
end
