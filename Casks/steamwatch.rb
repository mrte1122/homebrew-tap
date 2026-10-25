cask "steamwatch" do
  version "0.1.0"
  sha256 "3e62fa79d680fa25437a40294698f73179be66af03cd30ad84459a03b2908120"

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
