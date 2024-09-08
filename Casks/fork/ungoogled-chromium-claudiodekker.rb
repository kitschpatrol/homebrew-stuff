cask "ungoogled-chromium-claudiodekker" do
  arch arm: "arm64", intel: "x86-64"

  version "128.0.6613.119-1.1"
  sha256 arm:   "268624985f3c591a514ce707ec04e345f0a7a3c2071f9e97e476490e96eb083f",
         intel: "d4f348402ee7c3715b77bb31dbb279aadf9189b3bad3219bd5a7c89f37676250"

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
