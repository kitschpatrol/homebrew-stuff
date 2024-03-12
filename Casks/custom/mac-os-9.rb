cask "mac-os-9" do
  version "2024.02.05"
  sha256 "3834031596b0fb8edc3541a9d25990d5a79a139680018865892cdf8c5f4afe6d"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/Mac%20OS%209.zip##{version}"
  name "mac-os-9"
  desc "Classic Macintosh emulator via SheepShaver"
  homepage "https://mendelson.org/macos9osx.html"

  app "Mac OS 9.app"
end
