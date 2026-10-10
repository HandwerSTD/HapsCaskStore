cask "etohos" do
  version "1.0.9"
  sha256 arm64_linux: "1ca77b5a52054e49d4debb90d6c07b2df89e0e8c2686337afd8583de63542ed1"

  url "https://github.com/collaborative-creation/etohos/releases/download/v#{version}/entry-default-unsigned.hap"
  name "Etohos"
  desc "基于Flutter的鸿蒙应用，用于接入EasyTier组网"
  homepage "https://github.com/collaborative-creation/etohos"

  livecheck do
    url "https://github.com/collaborative-creation/etohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "entry-default-unsigned.hap"
end
