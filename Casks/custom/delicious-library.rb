cask "delicious-library" do
  version "3.9.3"
  sha256 "bd0243c806e044bffd8e568f99993440bf5302c9ff30027984bc817c69ae9931"

  url "http://delicious-monster.com/downloads/DeliciousLibrary3.zip"
  name "Delicious Library"
  homepage "https://www.delicious-monster.com/"

  app "Delicious Library #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.delicious-monster.library*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.delicious-monster.library*.sfl2",
    "~/Library/Containers/com.delicious-monster.library*",
  ]
end
