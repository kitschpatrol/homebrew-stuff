cask "flashprint" do
  version "5.8.0"
  sha256 "16bbfc95789a5922e90f6a962717bc355766918581221cf139d5eeac12dc15a2"

  # Version at end of the url is a dirty hack to work around Homebrew's
  # insistence on skipping checksums on unversioned URLs. ಠ_ಠ
  url "https://en.fss.flashforge.com/10000/software/23d1dae753b2cd2c90459baf3dc23b73.rar##{version}"
  name "FlashPrint"
  desc "Printing software for flashforge 3d-printers"
  homepage "https://www.flashforge.com/product-detail/40"

  livecheck do
    url "https://www.flashforge.com/download-center/63"
    regex(/Flashprint#{version.major}_(\d+(?:\.\d+)+)/i)
  end

  pkg "FlashPrint #{version.major}.pkg"

  uninstall pkgutil: "com.sz3dp.pkg.FlashPrint#{version.major}"

  zap trash: "~/Library/Preferences/FlashForge.FlashPrint.plist"
end
