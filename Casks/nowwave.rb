cask "nowwave" do
  version "1.0.4"
  sha256 "c3c3bb0763b2c1586ef28f37c3bd7e2cffea4a08389b7ce119c1bae45ae29679"

  url "https://nowwave.app/download/NowWave-#{version}.dmg"
  name "NowWave"
  desc "Floating mini player for TIDAL, Spotify and Apple Music"
  homepage "https://nowwave.app/"

  livecheck do
    url "https://nowwave.app/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "NowWave.app"

  zap trash: [
    "~/Library/Application Support/NowWave",
    "~/Library/Caches/com.nowwave.app",
    "~/Library/Preferences/com.nowwave.app.plist",
    "~/Library/Saved Application State/com.nowwave.app.savedState",
  ]
end
