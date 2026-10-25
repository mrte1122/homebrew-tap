cask "steamwatch" do
  version "0.3.0"
  sha256 "452353bd71e5ae048aadd4fa33750b37046f54ab026c7d1f236aca8143332853"

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
