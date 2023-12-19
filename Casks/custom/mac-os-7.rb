cask "mac-os-7" do
  version "2023.10.28"
  sha256 "e8f41916ae96eb6dfa19f188c654132548ac1ca0774508cb77e09f3d483c0d8b"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/System761.zip##{version}"
  name "mac-os-7"
  desc "Classic Macintosh emulator via BasiliskII"
  homepage "https://mendelson.org/macos9osx.html"

  app "System761.app", target: "Mac OS 7.app"
end
