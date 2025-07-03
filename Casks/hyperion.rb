cask "hyperion" do
  arch arm: "arm64", intel: "x86_64"
  version "2.1.1"
  sha256 arm: "a922247fcdd77b6cc2a4ca8600e2ec1ce89d706b6dcdd658f460534a1daa23d9", intel: "424e5d2223de3f6600efcbf8c08621f9351029aa5adce33d9332a0af7a4bf5c7"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end


  url "https://github.com/hyperion-project/hyperion.ng/releases/download/#{version}/Hyperion-#{version}-macOS-#{arch}.dmg", verified: "github.com/hyperion-project/hyperion.ng/"
  name "Hyperion"
  desc "The successor to Hyperion aka Hyperion Next Generation"
  homepage "https://hyperion-project.org/"

  livecheck do
    url "url"
    strategy :github_latest
  end

  conflicts_with formula: "hyperion"

  app "Hyperion.app"
  uninstall quit: "com.hyperion-project.Hyperion"

  zap trash: [
    "~/Library/Preferences/com.hyperion-project.Hyperion.plist"
  ],
  rmdir: [
    "~/.hyperion"
  ]
end