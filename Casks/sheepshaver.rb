cask "sheepshaver" do
  version "2.5"
  sha256 "76a166922cf053312d7fa51b287042ddbcd42ebbd48aa8b34a129c9585b3b330"

  url "https://www.emaculation.com/sheepshaver/SheepShaver_universal_20230810.zip"
  name "SheepShaver"
  desc "Classic Mac OS emulator"
  homepage "http://sheepshaver.cebix.net"

  depends_on cask: "sheepshaver-folder"

  app "SheepShaver.app", target: "/Applications/SheepShaver/SheepShaver.app"
end
