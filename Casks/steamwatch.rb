cask "steamwatch" do
  version "0.2.0"
  sha256 "5c83748f2aa5e669327d56bc823d55afd727370391eef4b846f565dd2d8afcff"

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
