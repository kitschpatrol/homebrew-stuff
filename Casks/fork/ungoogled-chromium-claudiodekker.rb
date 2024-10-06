cask "ungoogled-chromium-claudiodekker" do
  arch arm: "arm64", intel: "x86-64"

  version "129.0.6668.89-1.1"
  sha256 arm:   "466cfa9901284a63ea6714c49570b3846fed9bc58f3c4bd089559c1b5c0569ad",
         intel: "4175716060e27859487582e6c54ab4831c99bca26f21b3829da46d9b0ed67e7a"

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
