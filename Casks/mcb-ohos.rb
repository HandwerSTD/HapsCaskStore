cask "mcb-ohos" do
  version "1.2.0"
  sha256 arm64_linux: "0869917e08a45602553fbf31e8c140d3e9dc23bc50324e204cad8b2ff2fc4828"

  url "https://github.com/lxdklp/MCB_OHOS/releases/download/v#{version}/entry-default-unsigned.hap"
  name "Minecraft Box"
  desc "鸿蒙版Minecraft Java服务器管理工具"
  homepage "https://github.com/lxdklp/MCB_OHOS"

  livecheck do
    url "https://github.com/lxdklp/MCB_OHOS"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
