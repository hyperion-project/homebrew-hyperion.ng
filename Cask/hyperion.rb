cask "hyperion" do
  arch arm: "x64", intel: "x64"
  version: "2.0.16"
  sha256 arm: "9cc530d5772570bb41ad8a3e2b553f211f373a616a731189192910d33effa6fc", intel: "9cc530d5772570bb41ad8a3e2b553f211f373a616a731189192910d33effa6fc"
  url "https://github.com/hyperion-project/hyperion.ng/releases/download/#{version}/Hyperion-#{version}-macOS-#{arch}.dmg", verified: "github.com/hyperion-project/hyperion.ng/"
  name "Hyperion"
  desc "The successor to Hyperion aka Hyperion Next Generation"
  homepage "https://hyperion-project.org/"

  livecheck do
    url "url"
    strategy :github_latest
  end

  conflicts_with cask: "hyperion_nightly"
  depends_on macos: ">= :big_sur"

  app "Hyperion.app"
  uninstall quit: "com.hyperion-project.Hyperion"

  zap trash: [
    "~/.hyperion",
    "~/Library/Preferences/com.hyperion-project.Hyperion.plist"
  ]
end