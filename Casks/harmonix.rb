cask "harmonix" do
  version "0.0.11"
  sha256 arm64_linux: "3603322725d9e17620b9bb2bef27f0bf1d91af184f26e31c058d4b73fcde32f3"

  url "https://github.com/hackeris/Harmonix/releases/download/v#{version}/entry-default-unsigned-universal.hap"
  name "Harmonix"
  desc "在鸿蒙PC上运行多种架构Linux程序的终端"
  homepage "https://github.com/hackeris/Harmonix"

  livecheck do
    url "https://github.com/hackeris/Harmonix"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned-universal.hap"
end
