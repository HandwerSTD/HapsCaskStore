cask "pinmony" do
  version "3.1.0"
  sha256 arm64_linux: "9a555f53a6ba7c57cc1b225f00f684d8b203eab1de4ae36d15a4267eba9288c4"

  url "https://github.com/Torotar/Pinmony/releases/download/v#{version}/Pinmony-3.1.0.hap"
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

  ohos_app "Pinmony-3.1.0.hap"
end
