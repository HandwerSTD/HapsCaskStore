cask "localsend-ohos" do
  version "1.17.2"
  sha256 :no_check

  url "https://github.com/Aloereed/localsend-ohos/releases/download/#{version}%2B60/aloesend-1.17.2-sideloaded.hap"
  name "LocalSend"
  desc "LocalSend鸿蒙版，局域网内安全传输文件与消息"
  homepage "https://github.com/Aloereed/localsend-ohos"

  livecheck do
    url "https://github.com/Aloereed/localsend-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "aloesend-1.17.2-sideloaded.hap"
end
