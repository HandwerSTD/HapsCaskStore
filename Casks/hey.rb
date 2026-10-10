cask "hey" do
  version "1.3.4"
  sha256 arm64_linux: "f64dc9ad389fc5656160e1e99912605907207eaeb343c1c3eb87d26f0719f3a6"

  url "https://github.com/xiaoli8571/Hey/releases/download/v#{version}/Hey-1.3.4-unsigned.hap"
  name "Hey"
  desc "基于 Xray/sing-box 内核的鸿蒙原生代理客户端，安装包由第三方 fork 提供"
  homepage "https://github.com/popsiclelmlm/Hey"

  livecheck do
    url "https://github.com/xiaoli8571/Hey"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Hey-1.3.4-unsigned.hap"
end
