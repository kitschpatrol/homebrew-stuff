cask "mail-archiver-x" do
  version "7.2.1"
  sha256 "4b770cc37e34f2f2a05862c10d50b6ebb99b5fe84fae453ddb6e947d0974e5e6"

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
