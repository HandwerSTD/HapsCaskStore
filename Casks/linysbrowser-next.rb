cask "linysbrowser-next" do
  version "2.1.1"
  sha256 arm64_linux: "6440174bfc5a7cf3724453fc5ee1e2b5fdbe1ea527818096e9240b4685e9d5c3"

  url "https://github.com/awaLiny2333/LinysBrowser_NEXT/releases/download/v#{version}-beta/home-default-unsigned.hap"
  name "冲浪喵"
  desc "一款为鸿蒙NEXT开发的、轻量化的网页浏览器"
  homepage "https://github.com/awaLiny2333/LinysBrowser_NEXT"

  livecheck do
    url "https://github.com/awaLiny2333/LinysBrowser_NEXT"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "home-default-unsigned.hap"
end
