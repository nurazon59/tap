# Homebrew Tap

個人用のHomebrew Formula・Caskを管理するリポジトリ。

## インストール

```sh
brew tap nurazon59/tap https://github.com/nurazon59/tap
brew install --cask nurazon59/tap/gather-v2
```

| Cask | アプリ | 対応環境 |
| --- | --- | --- |
| `gather-v2` | [Gather 2.0](https://www.gather.town/download) | macOS 13以降、Apple Silicon / Intel |

## 開発

```sh
ghq get nurazon59/tap
```

GUIアプリは`Casks/`、CLIなどは`Formula/`に追加する。

```sh
brew style Casks/gather-v2.rb
brew audit --cask --online nurazon59/tap/gather-v2
brew fetch --cask nurazon59/tap/gather-v2
brew livecheck --cask nurazon59/tap/gather-v2
```

## 更新

Gather 2.0はアプリ内の自動更新に対応している。Caskの新バージョンは、公式のElectron Builder更新メタデータから`brew livecheck`で検出する。

Caskを更新するときは、`version`と配布ファイルの`sha256`を更新する。

Renovateの標準Homebrew managerは、このCaskの配布URLに対応していない。Renovateで更新する場合は、独自のdatasource・managerとSHA-256を更新する仕組みが必要。
