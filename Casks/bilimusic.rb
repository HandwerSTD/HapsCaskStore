cask "bilimusic" do
  version "1.3.9"
  sha256 arm64_linux: "d8b203b9e67b99bbb16e639da344bc8083ed36370f2b4ad981b93d16aaaca87f"

  url "https://github.com/chai2shi-spec/BiliMusic/releases/download/v#{version}/BiliMusic-1.3.9-signed.hap"
  name "BiliMusic"
  desc "鸿蒙 B 站第三方音乐播放器"
  homepage "https://github.com/chai2shi-spec/BiliMusic"

  livecheck do
    url "https://github.com/chai2shi-spec/BiliMusic"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "BiliMusic-1.3.9-signed.hap"
end
