cask "hyperion" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.1"
  sha256 arm:   "8468242cd0e3fb433ca6c22c3cd4cd5ce0a20bded31a596a8258bf63d8aade5e",
         intel: "b7eb3228757c525cf4a290ab275561ac44fb0617bb6e079c8d877890c5ccfe17"

  url "https://github.com/hyperion-project/hyperion.ng/releases/download/#{version}/Hyperion-#{version}-macOS-#{arch}.dmg"
  name "Hyperion"
  name "Hyperion.NG"
  desc "Ambient and bias lighting controller"
  homepage "https://hyperion-project.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Hyperion.app"

  uninstall quit: "com.hyperion-project.Hyperion"

  zap trash: [
    "~/.hyperion",
    "~/Library/Preferences/com.hyperion-project.Hyperion.plist",
  ]
end
