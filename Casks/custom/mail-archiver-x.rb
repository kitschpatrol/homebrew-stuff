cask "mail-archiver-x" do
  version "7.2.2"
  sha256 "c3dc5ff0938a4e444c3d1798ade8954bee9a502b891654c09ec5de4ea29655bb"

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
