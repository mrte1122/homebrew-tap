cask "steamwatch" do
  version "0.5.0"
  sha256 "995dd4b38c9a02120ffee97660318f606d6800e0bac6f4e5071b7a1e9217c2fe"

  url "https://github.com/mrte1122/Steamwatch/releases/download/v#{version}/Steamwatch.zip"
  name "Steamwatch"
  desc "Menu bar watcher for Steam wishlist sales, target prices and new lows"
  homepage "https://github.com/mrte1122/Steamwatch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Steamwatch.app"

  uninstall quit: "io.github.mrte1122.Steamwatch"

  zap trash: [
    "~/Library/Application Support/Steamwatch",
    "~/Library/Preferences/io.github.mrte1122.Steamwatch.plist",
  ]
end
