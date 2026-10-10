cask "soc-search" do
  version "1.0.25"
  sha256 arm64_linux: "333113582b42b18aa0ed0d6ece6f60b1ec646a0435dbee09dbdb8c8afb20b065"

  url "https://github.com/Amview/soc-search/releases/download/#{version}/entry-default-signed.hap"
  name "soc-search"
  desc "查询安兔兔、Geekbench等平台SoC性能跑分排行的工具"
  homepage "https://github.com/Amview/soc-search"

  livecheck do
    url "https://github.com/Amview/soc-search"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-signed.hap"
end
