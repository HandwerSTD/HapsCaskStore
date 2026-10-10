cask "ohentai" do
  version "0.5.4"
  sha256 arm64_linux: "124d8d8c3f037d4b83e378ec356adfee1b4c8d6024fbf34ec4fb2f7effe76dc8"

  url "https://github.com/Ibukitofu/Ohentai/releases/download/#{version}/Ohentai-0.5.4.hap"
  name "Ohentai"
  desc "一款专为鸿蒙原生开发的 E-Hentai 浏览工具，支持画廊浏览、阅读与标签翻译"
  homepage "https://github.com/Ibukitofu/Ohentai"

  livecheck do
    url "https://github.com/Ibukitofu/Ohentai"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "Ohentai-0.5.4.hap"
end
