cask "flashprint" do
  version "5.8.5"
  sha256 "b358dcb2a8c16fb0824591fe1a55f5fff68ee9debc0cd9167e75d2993719bf85"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://en.fss.flashforge.com/10000/software/ff6b02b4efabd87c9e2c3a2d4db563f8.zip##{version}"
  name "FlashPrint"
  desc "Printing software for flashforge 3d-printers"
  homepage "https://industry.flashforge.com/product-detail/40"

  livecheck do
    url "https://industry.flashforge.com/download-center/63"
    regex(/Flashprint#{version.major}_(\d+(?:\.\d+)+)/i)
  end

  pkg "FlashPrint #{version.major}.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint#{version.major}"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
