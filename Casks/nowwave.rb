cask "nowwave" do
  version "1.0.0"
  sha256 "cdd29f60e549d8ca5c52ef260511c4f9125b5b70bd7ca5c2377311f33a814c1c"

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
