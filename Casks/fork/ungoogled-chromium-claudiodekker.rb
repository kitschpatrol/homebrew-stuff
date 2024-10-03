cask "ungoogled-chromium-claudiodekker" do
  arch arm: "arm64", intel: "x86-64"

  version "129.0.6668.70-1.1"
  sha256 arm:   "4152bbe155b23741caf122cb24402c3d951127c6bb865078e11d907ff3a726af",
         intel: "ed7c0b9c3b99396e7ccb084e737fa5b8c2c6ef39992a0d9d82127aff441b1820"

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
