cask "speediness" do
  version "1.6.1"
  sha256 "d800160cf694610f36ddab320b9b82aaf22b419c80db5fe8fb558696e1250d1e"

  # Version in url is not going to survive a real update, but it works around
  # Homebrew's insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://www.dropbox.com/scl/fi/21mtkbqa4qqkz5ryiuu5t/Speediness-#{version}-1686472921-1701610430.zip?rlkey=bhqkthepo5lc3u7tqa0gsiywb&raw=1",
      verified: "dropbox.com/"
  name "Speediness"
  desc "Check your internet speed"
  homepage "https://sindresorhus.com/speediness"

  app "Speediness.app"
end
