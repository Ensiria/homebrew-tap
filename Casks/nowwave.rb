cask "nowwave" do
  version "1.0.1"
  sha256 "0057fb515b82567e22c814a158701e7cc67ff6d6110dc533e26cd6e280acd346"

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
