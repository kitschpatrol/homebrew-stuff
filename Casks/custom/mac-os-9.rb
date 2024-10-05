cask "mac-os-9" do
  version "2024.09.16"
  sha256 "15968d3cf2c7a9f9679d28443cf0f75ecd7041bf2e17f7598c7f56a4f277d38c"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/Mac%20OS%209.zip##{version}"
  name "mac-os-9"
  desc "Classic Macintosh emulator via SheepShaver"
  homepage "https://mendelson.org/macos9osx.html"

  app "Mac OS 9.app"
end
