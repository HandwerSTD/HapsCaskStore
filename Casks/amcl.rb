cask "amcl" do
  version "1.0.0"
  sha256 arm64_linux: "139dde14b23b0f974b72807781a258ee605a405bfadca8c332ce3b1a447f3e10"

  url "https://github.com/LZZLHY/amcl/releases/download/v#{version}-beta.5/amcl-v1.0.0-beta.5-unsigned.hap"
  name "AMCL"
  desc "鸿蒙版全量Java版我的世界启动器"
  homepage "https://github.com/LZZLHY/amcl"

  livecheck do
    url "https://github.com/LZZLHY/amcl"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "amcl-v1.0.0-beta.5-unsigned.hap"
end
