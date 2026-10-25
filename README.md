# mrte1122/homebrew-tap

Homebrew casks for apps by [@mrte1122](https://github.com/mrte1122).

```bash
brew trust mrte1122/tap
brew install --cask mrte1122/tap/quotacat
brew install --cask mrte1122/tap/vaporwatch
```

Recent Homebrew versions only load casks from third-party taps you've trusted, so run `brew trust mrte1122/tap` once before the first install. Without it, Homebrew stops with "Refusing to load cask … from untrusted tap".

| Cask | App |
|---|---|
| `quotacat` | [Quotacat](https://github.com/mrte1122/Quotacat): GitHub API limits, Actions minutes, Copilot usage, pull requests and failing workflows in the macOS menu bar |
| `vaporwatch` | [Vaporwatch](https://github.com/mrte1122/Vaporwatch) (formerly Steamwatch): Steam wishlist sales, price limits, new lows, suggestions and playtime in the macOS menu bar |

Both apps update themselves, so `brew upgrade` isn't needed; the casks are bumped on every release anyway. The `steamwatch` cask was renamed to `vaporwatch`; Homebrew follows the rename automatically.
