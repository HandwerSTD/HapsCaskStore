cask "vlc-qt6-ohos" do
  version "3.0.21"
  sha256 arm64_linux: "a280423e885f927193323ef029dd4522fcd964f8984dff796f4a0ec281999c79"

  url "https://github.com/Aloereed/vlc-qt6-ohos/releases/download/#{version}/VLC_Media_Player_PC_Tablet_3021.hap"
  name "VLC播放器"
  desc "基于QT移植的VLC播放器"
  homepage "https://github.com/Aloereed/vlc-qt6-ohos"

  livecheck do
    url "https://github.com/Aloereed/vlc-qt6-ohos"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :linux
  container type: :naked

  ohos_app "VLC_Media_Player_PC_Tablet_3021.hap"
end
