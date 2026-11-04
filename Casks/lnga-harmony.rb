cask "lnga-harmony" do
  version "1.3.0"
  sha256 arm64_linux: "4a07629612cb1843e415d24e7b038aefcb6b6938d2d7aee6532eaed4df092e13"

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
