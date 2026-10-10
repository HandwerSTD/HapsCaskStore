cask "tieba-lite-harmony" do
  version "1.3.0"
  sha256 arm64_linux: "738172c6a45cb45fcd320d8e2086d62ed856a1a42859aaf92efbaf24229e9e2b"

  url "https://github.com/137458/tieba-lite-harmony/releases/download/v#{version}/tieba-lite-harmony-v1.3.0.hap"
  name "贴吧 Lite"
  desc "鸿蒙第三方百度贴吧客户端，支持浏览、搜索与回帖"
  homepage "https://github.com/137458/tieba-lite-harmony"

  livecheck do
    url "https://github.com/137458/tieba-lite-harmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "tieba-lite-harmony-v1.3.0.hap"
end
