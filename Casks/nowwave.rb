cask "nowwave" do
  version "1.0.2"
  sha256 "e179fde550c9cb26572b9f6052e5628e30fc90c6134a427975d222573ced2534"

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
