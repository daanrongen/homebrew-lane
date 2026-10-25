# homebrew-lane

[Homebrew](https://brew.sh) tap for [`lane`](https://github.com/daanrongen/lane). Apple Silicon macOS only.

```sh
brew install daanrongen/lane/lane
```

`Formula/lane.rb` installs lane's compiled binary (`lane-<version>-macos-arm64.tar.gz`), so the formula has no dependencies. On each lane release, lane's publish workflow sends a `release` dispatch, and [`update.yml`](.github/workflows/update.yml) points the formula at the new bundle, installs and tests it, and commits. Edit the formula by hand only for changes other than url, version and sha256.
