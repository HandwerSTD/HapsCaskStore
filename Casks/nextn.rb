cask "nextn" do
  version "1.0.9"
  sha256 arm64_linux: "241eac98b7f2a3a96d064f3557a918b805310ab0aac61f74cd76c17960122051"

  url "https://github.com/erosTeam/NextN/releases/download/v#{version}/NextN_1.0.9_ohos-release-unsigned.hap"
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

  ohos_app "NextN_1.0.9_ohos-release-unsigned.hap"
end
