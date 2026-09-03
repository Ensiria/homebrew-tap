cask "nowwave" do
  version "1.0.3"
  sha256 "3422960df00c936ba4ca94eebaed5ee00d9df92ef713a71ba8e883af58fede9a"

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
