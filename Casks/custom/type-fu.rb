cask "type-fu" do
  version "3.6.11"
  sha256 "04835bf155028448746a979794f9c8c1a06d3f0bdff138cb88016b0b988181df"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://pub-315235805cdf41349279caaaf80e8933.r2.dev/04835bf155028448746a979794f9c8c1a06d3f0bdff138cb88016b0b988181df.zip##{version}",
      verified: "pub-315235805cdf41349279caaaf80e8933.r2.dev/"
  name "Type Fu"
  desc "Vintage native version of the typing training app"
  homepage "https://type-fu.com/"

  app "Type Fu #{version.major}.app"
end
