cask "lnga-harmony" do
  version "1.2.6"
  sha256 arm64_linux: "6dd536bef402ca460f55276f611d2c8da9b5ab60137b08fea7915820f4801022"

  url "https://github.com/apap6628114/lnga_harmony/releases/download/#{version}/entry-default.hap"
  name "LNGA"
  desc "NGA玩家社区鸿蒙原生客户端，支持板块浏览、帖子阅读、发帖回复与私信聊天"
  homepage "https://github.com/apap6628114/lnga_harmony"

  livecheck do
    url "https://github.com/apap6628114/lnga_harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default.hap"
end
