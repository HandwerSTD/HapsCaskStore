cask "niceleep" do
  version "0.9.9"
  sha256 arm64_linux: "5b4aaa03d24565c8bbe375cc590220be0261374cfa4f626e9bcb68a2bb4edd95"

  url "https://github.com/qinshah/niceleep/releases/download/v#{version}/entry-default-signed.hap"
  name "响入睡"
  desc "一个专注于白噪音播放的应用，帮助你放松、专注和入眠"
  homepage "https://github.com/qinshah/niceleep"

  livecheck do
    url "https://github.com/qinshah/niceleep"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
