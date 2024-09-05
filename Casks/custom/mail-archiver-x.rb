cask "mail-archiver-x" do
  version "7.2.3"
  sha256 "b8fe8fa97e6bc94256883e6cdc5d63d19d53cb43de29b8aa23bfb8c2825e16e7"

  url "https://mailarchiver.b-cdn.net/MailArchiverX#{version}.dmg",
      verified: "mailarchiver.b-cdn.net/"
  name "Mail Archiver X"
  desc "Archive your email"
  homepage "https://www.mothsoftware.com/"

  livecheck do
    url "https://www.mothsoftware.com/content/download/download.php"
    regex(%r{<p>(\d+(?:\.\d+)+)</p>}i)
  end

  installer manual: "Mail Archiver X Installer.app"

  # Should run "Mail Archiver X Uninstaller.app" instead?
  uninstall delete: "/Applications/Mail Archiver X"
end
