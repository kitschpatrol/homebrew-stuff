cask "ungoogled-chromium-claudiodekker" do
  arch arm: "arm64", intel: "x86-64"

  version "130.0.6723.91-1.1"
  sha256 arm:   "94a216016bc9864d7cfa73389d4ab06d763f883bef6f8eca7ef9b33781da4506",
         intel: "a24f05cdd8b29ccfebabc33dbacb5fb3ebad6b483e016151f7618fb97beb0e1f"

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
