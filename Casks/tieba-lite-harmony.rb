cask "tieba-lite-harmony" do
  version "1.2.3"
  sha256 arm64_linux: "a3f8c9505ffe67fef68bfbc6197302aa9bad59b7127415f9b3c69c864f6e5e09"

  url "https://github.com/137458/tieba-lite-harmony/releases/download/v#{version}-rc.2/tieba-lite-harmony-v1.2.3-rc.2.hap"
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

  ohos_app "tieba-lite-harmony-v1.2.3-rc.2.hap"
end
