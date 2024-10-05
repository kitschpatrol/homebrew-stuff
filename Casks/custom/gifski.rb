cask "gifski" do
  # "Updated once a year" at
  # https://github.com/sindresorhus/Gifski

  version "2.23.0"
  sha256 "f292b1359e25af0a5b08e620d3c3d319c085beb443d440fbbfc69c1da6126ef3"

  url "https://github.com/sindresorhus/meta/files/13539147/Gifski-#{version}-1692807940.zip",
      verified: "github.com/sindresorhus/"
  name "Gifski"
  desc "GUI for Gifski video to gif conversion library"
  homepage "https://gif.ski/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gifski.app"
end
