# A Homebrew tap for Hyperion.NG
Install [`Hyperion.NG`](https://github.com/hyperion-project/hyperion.ng) on macOS via Homebrew

> [!IMPORTANT]  
> First, make sure you have installed [`Homebrew`](https://brew.sh) if you haven't yet.

## Installation

Add hyperion to local homebrew cask. You only need to do this once.
```
brew tap hyperion-project/hyperion.ng
```

Install hyperion
```
brew install --cask hyperion
```

## First launch

Hyperion is not yet notarized, so macOS Gatekeeper blocks it the first time it is opened. To allow it:

1. Open Hyperion from `/Applications`. macOS reports that it cannot verify the app; click **Done**.
2. Open **System Settings → Privacy & Security**, scroll to the **Security** section, and click **Open Anyway** next to the message about Hyperion.
3. Confirm with your password or Touch ID. Hyperion opens normally from then on.

If macOS instead reports that Hyperion **is damaged and can't be opened**, the app is fine; macOS shows this message for unnotarized apps on some systems. Remove the quarantine flag from the installed app and open it again:
```
xattr -dr com.apple.quarantine /Applications/Hyperion.app
```

## Uninstall

Run the following:
```
brew uninstall --cask hyperion
brew untap hyperion-project/hyperion.ng
```

## License
The source is released under MIT-License (see https://opensource.org/licenses/MIT).<br>
[![GitHub license](https://img.shields.io/badge/License-MIT-yellow.svg)](https://raw.githubusercontent.com/hyperion-project/homebrew-hyperion.ng/refs/heads/main/LICENSE)