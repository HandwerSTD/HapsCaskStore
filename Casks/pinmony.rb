cask "pinmony" do
  version "3.0.0"
  sha256 arm64_linux: "567c5da29f4ae81c160e0e3a6715eebf7b4575f9861424edd5aef1aa17340374"

  url "https://github.com/Torotar/Pinmony/releases/download/v#{version}/entry-default-unsigned.hap"
  name "Pinmony"
  desc "鸿蒙原生 Pinterest 客户端，支持浏览、搜索与互动"
  homepage "https://github.com/Torotar/Pinmony"

  livecheck do
    url "https://github.com/Torotar/Pinmony"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
