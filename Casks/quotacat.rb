cask "quotacat" do
  version "1.7.2"
  sha256 "1b3cdbb06b538238e70c7733f7dd54a7c7f315dc3c5aaff284a863d2c6e2eba4"

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
