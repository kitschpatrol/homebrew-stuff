cask "mac-os-7" do
  version "2024.03.03"
  sha256 "48831519938456f0e442a3c4b5fe41331e8de476a052e1d65b83e6289da687c0"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://mendelson.org/System761.zip##{version}"
  name "mac-os-7"
  desc "Classic Macintosh emulator via BasiliskII"
  homepage "https://mendelson.org/macos9osx.html"

  app "System761.app", target: "Mac OS 7.app"
end
