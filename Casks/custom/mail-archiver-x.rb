cask "mail-archiver-x" do
  version "7.1.0"
  sha256 "1a2c8d62ada2125d8ae5f25e8e46669739cb1a10aa3fc6cee6211c21063d7ee4"

  url "https://mailarchiver.b-cdn.net/MailArchiverX#{version}.dmg"
  name "Mail Archiver X"
  desc "Archive your email"
  homepage "https://www.mothsoftware.com"

  livecheck do
    url "https://www.mothsoftware.com/content/download/download.php"
    regex(%r{\<p\>(\d+(?:\.\d+)+)\</p\>}i)
  end

  installer manual: "Mail Archiver X Installer.app"

  # Should run "Mail Archiver X Uninstaller.app" instead?
  uninstall delete: "/Applications/Mail Archiver X"
end
