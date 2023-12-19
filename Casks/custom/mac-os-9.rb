cask "mac-os-9" do
  version "2023.07.10"
  sha256 "d28b0b465ba2fc071e5483d22711fc0b3d511938a0801494f5e83443ecc512ab"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/Mac%20OS%209.zip##{version}"
  name "mac-os-9"
  desc "Classic Macintosh emulator via SheepShaver"
  homepage "https://mendelson.org/macos9osx.html"

  app "Mac OS 9.app"
end
