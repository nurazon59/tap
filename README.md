# Homebrew Tap

A personal collection of Homebrew formulae and casks.

## Installation

```sh
brew tap nurazon59/tap https://github.com/nurazon59/tap
brew install --cask nurazon59/tap/gather-v2
```

| Cask | App | Requirements |
| --- | --- | --- |
| `gather-v2` | [Gather 2.0](https://www.gather.town/download) | macOS 13 or later, Apple Silicon / Intel |

## Development

```sh
ghq get nurazon59/tap
```

Add GUI apps to `Casks/` and command-line tools to `Formula/`.

```sh
brew style Casks/gather-v2.rb
brew audit --cask --online nurazon59/tap/gather-v2
brew fetch --cask nurazon59/tap/gather-v2
brew livecheck --cask nurazon59/tap/gather-v2
```

## Updates

Gather 2.0 supports automatic updates within the app. `brew livecheck` detects new versions using the official Electron Builder update metadata.

The `Daily livecheck` GitHub Actions workflow checks the casks in this tap daily at 09:17 JST (00:17 UTC) and records the results in the run logs and job summary. You can also run it manually from the Actions tab.

To update a cask, update its `version` and the `sha256` checksum of the download.

Renovate's built-in Homebrew manager does not support this cask's download URL. Updating it with Renovate would require a custom datasource and manager, plus a way to update the SHA-256 checksum.
