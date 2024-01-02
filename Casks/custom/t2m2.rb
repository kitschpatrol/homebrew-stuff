cask "t2m2" do
  version "2.00"
  sha256 "b2237496f9ec5d703a7f7abb469d1ed486f151d46792bdaad7c4d9d970b1556f"

  # eclecticlightdotcom.files.wordpress.com was verified as official when first introduced to the cask
  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://eclecticlightdotcom.files.wordpress.com/2024/01/t2m2200.zip##{version}",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "t2m2"
  name "TheTimeMachineMechanic"
  homepage "https://eclecticlight.co/consolation-t2m2-and-log-utilities/"

  depends_on macos: ">= :sonoma"

  app "t2m2200/TheTimeMachineMechanic.app"
end
