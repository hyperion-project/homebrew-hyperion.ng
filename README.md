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
brew install --cask --no-quarantine hyperion
```

> [!NOTE]
> Why you need the "--no-quarantine" parameter? <br>
> MacOS marks all files downloaded from the Internet as quarantined. When you run a quarantined program, macOS displays the message **Hyperion can’t be opened because Apple cannot check it for malicious software"**.
> Of course, the new program is downloaded from the Internet, so don't mark it as quarantined use the **"--no-quarantine"** option*.

## Uninstall

Run the following:
```
brew uninstall --cask hyperion
brew untap hyperion-project/hyperion.ng
```

## License
The source is released under MIT-License (see https://opensource.org/licenses/MIT).<br>
[![GitHub license](https://img.shields.io/badge/License-MIT-yellow.svg)](https://raw.githubusercontent.com/hyperion-project/homebrew-hyperion.ng/refs/heads/main/LICENSE)