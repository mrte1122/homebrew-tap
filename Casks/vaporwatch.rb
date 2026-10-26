cask "vaporwatch" do
  version "0.7.0"
  sha256 "23aad30b32f580a9f9d3c82bfa28367dcd54dc02a951de8f8f237d4160767daf"

  url "https://github.com/mrte1122/Vaporwatch/releases/download/v#{version}/Vaporwatch.zip"
  name "Vaporwatch"
  desc "Menu bar watcher for Steam wishlist sales, price limits and new lows"
  homepage "https://github.com/mrte1122/Vaporwatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vaporwatch.app"

  # The bundle ID is kept from the app's original name, Steamwatch.
  uninstall quit: "io.github.mrte1122.Steamwatch"

  zap trash: [
    "~/Library/Application Support/Vaporwatch",
    "~/Library/Application Support/Steamwatch",
    "~/Library/Preferences/io.github.mrte1122.Steamwatch.plist",
  ]
end
