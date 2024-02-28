cask "speediness" do
  version "1.7.0"
  sha256 "b90d7458a9326185a58df6ce0b2ae80cb4cb96ca728a9e9c045554f2cf72dbff"

  # Version in url is not going to survive a real update, but it works around
  # Homebrew's insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://www.dropbox.com/scl/fi/fz7g9b5zjuvj0jehefuuv/Speediness-#{version}-1705505161.zip?rlkey=d1otns1la8mygh2a4uebb08pg&raw=1",
      verified: "dropbox.com/"
  name "Speediness"
  desc "Check your internet speed"
  homepage "https://sindresorhus.com/speediness"

  app "Speediness.app"
end
