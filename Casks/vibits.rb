cask "vibits" do
  version "1.4.9"
  sha256 "f6e11ac9301348f822e55ebe17d42dceade5f8b32188ecc0f2aea8c5b4a6093f"

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
