cask "sheepshaver-folder" do
  # See https://www.emaculation.com/forum/viewtopic.php?f=20&t=7360
  version "2.5"
  sha256 "ac714fed65354dc337026653d2e842ed9183ac93cc547ca46d26e531baad811f"

  url "https://ronaldpr.home.xs4all.nl/sheepshaverforum/SheepShaver_folder.zip"
  name "SheepShaver Folder"
  desc "Suite folder for SheepShaver "

  suite "SheepShaver"

  zap trash: [
    '/Applications/SheepShaver',
  ]
end
