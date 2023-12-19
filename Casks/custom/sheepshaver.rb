cask "sheepshaver" do
  version "2.5"
  sha256 "76a166922cf053312d7fa51b287042ddbcd42ebbd48aa8b34a129c9585b3b330"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://www.emaculation.com/sheepshaver/SheepShaver_universal_20230810.zip##{version}",
      verified: "emaculation.com/sheepshaver/"
  name "SheepShaver"
  desc "Classic Macintosh emulator"
  homepage "http://sheepshaver.cebix.net/"

  depends_on cask: "sheepshaver-folder"

  app "SheepShaver.app", target: "/Applications/SheepShaver/SheepShaver.app"
end
