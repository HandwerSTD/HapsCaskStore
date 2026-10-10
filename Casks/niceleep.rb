cask "niceleep" do
  version "1.1.0"
  sha256 arm64_linux: "dd8073c863708d5d8ce2c93488dbaab9dcbd62d37ef2023a6c49911d791fa688"

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
