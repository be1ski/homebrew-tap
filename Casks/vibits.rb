cask "vibits" do
  version "1.2.8"
  sha256 "0f6efc5a95553eb90d52146f313a6ed2803c7df3a908fb4551c6e8f87d532f36"

  url "https://github.com/be1ski/vibits/releases/download/v#{version}/Vibits-#{version}.dmg"
  name "Vibits"
  desc "Habit tracker powered by Memos"
  homepage "https://be1ski.github.io/vibits/"

  depends_on macos: ">= :ventura"

  app "Vibits.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/Vibits.app"
  end

  zap trash: [
    "~/Library/Application Support/Vibits",
    "~/Library/Preferences/space.be1ski.vibits.plist",
  ]
end
