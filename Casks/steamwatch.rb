cask "steamwatch" do
  version "0.4.0"
  sha256 "38a8c3d7b4d070cc4df727c969bb5bb90cae0bd06e4e0c48084231050e810499"

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
