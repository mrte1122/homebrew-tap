cask "quotacat" do
  version "1.7.1"
  sha256 "da2fd8098053848a4d201fa2412b59e07d5264cd2837355f34ba8cd8c2be9f97"

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
