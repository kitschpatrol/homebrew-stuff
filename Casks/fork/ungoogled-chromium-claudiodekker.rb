cask "ungoogled-chromium-claudiodekker" do
  arch arm: "arm64", intel: "x86-64"

  version "130.0.6723.69-1.1"
  sha256 arm:   "7c4c91a8ceb68bee1a5c4733ca817b8dac9751009e510e7f711fe1184ed3562f",
         intel: "a73600c926302875c33623492272c461658ff89a6b4fa4b57b55b43e5de575ea"

  url "https://github.com/claudiodekker/ungoogled-chromium-macos/releases/download/#{version}/ungoogled-chromium_#{version}_#{arch}-macos-signed.dmg",
      verified: "github.com/claudiodekker/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Ungoogled Chromium signed and notarized by @claudiodekker"
  homepage "https://ungoogled-software.github.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  conflicts_with cask: [
    "chromium",
    "eloston-chromium",
    "freesmug-chromium",
  ]
  depends_on macos: ">= :catalina"

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
