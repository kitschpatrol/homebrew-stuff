cask "mac-os-9" do
  version "2024.04.09"
  sha256 "3d3ec3060b9af89c2ad3664e0b715181998bfc3795c721850d4c9b1b474253d6"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/Mac%20OS%209.zip##{version}"
  name "mac-os-9"
  desc "Classic Macintosh emulator via SheepShaver"
  homepage "https://mendelson.org/macos9osx.html"

  app "Mac OS 9.app"
end
