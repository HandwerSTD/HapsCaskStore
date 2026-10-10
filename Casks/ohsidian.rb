cask "ohsidian" do
  version :latest
  sha256 :no_check

  url "https://github.com/HanversionOvO/OHSidian/releases/latest/download/OHsidian.hap"
  name "OHsidian"
  desc "鸿蒙Obsidian笔记移植版，通过Electron兼容层运行"
  homepage "https://github.com/HanversionOvO/OHSidian"

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "OHsidian.hap"
end
