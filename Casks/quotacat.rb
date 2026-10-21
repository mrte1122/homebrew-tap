cask "quotacat" do
  version "1.7.0"
  sha256 "b3380eb742d89fbca517b22494727811a184b5ddb59d1fcc12cc792f7403a0b2"

  url "https://github.com/mrte1122/Quotacat/releases/download/v#{version}/Quotacat.zip"
  name "Quotacat"
  desc "Menu bar monitor for GitHub API limits, Actions minutes, Copilot usage and PRs"
  homepage "https://github.com/mrte1122/Quotacat"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Quotacat.app"

  uninstall quit: "io.github.mrte1122.Quotacat"

  zap trash: [
    "~/Library/Application Support/Quotacat",
    "~/Library/Preferences/io.github.mrte1122.Quotacat.plist",
  ]
end
