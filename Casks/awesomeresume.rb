cask "awesomeresume" do
  version "2025.8.3"
  sha256 arm64_linux: "7352689f45ff1f1933404409ef955100550a62ec3ba3d78ba3dabf0a4ce90f32"

  url "https://github.com/Luo-A-Chen/AwesomeResume/releases/download/v#{version}%2B2/2025_8_3_ohos_arm64.hap"
  name "awesome_blbl"
  desc "使用鸿蒙flutter3.22版本开发的第三方B站"
  homepage "https://github.com/Luo-A-Chen/AwesomeResume"

  livecheck do
    url "https://github.com/Luo-A-Chen/AwesomeResume"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "2025_8_3_ohos_arm64.hap"
end
