cask "mac-os-7" do
  version "2024.10.12"
  sha256 "03c4ad6baac02d5102258d1979bb9bbedd64ed0d80cfe03decc861bc9316d26d"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/System761.zip##{version}"
  name "mac-os-7"
  desc "Classic Macintosh emulator via BasiliskII"
  homepage "https://mendelson.org/macos9osx.html"

  app "System761.app", target: "Mac OS 7.app"
end
