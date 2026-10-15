cask "nextn" do
  version "1.0.7"
  sha256 arm64_linux: "8d7eb9a7f45cb99f69daf49343e5c0aea555d01bacaf316515a41f4bf8214d71"

  url "https://github.com/erosTeam/NextN/releases/download/v#{version}/NextN_1.0.7_ohos-release-unsigned.hap"
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

  ohos_app "NextN_1.0.7_ohos-release-unsigned.hap"
end
