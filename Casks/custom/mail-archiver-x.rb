cask "mail-archiver-x" do
  version "7.1.3"
  sha256 "cc97004e3995f7c5ad95b7240538a955f6cb184032234345a9ea64b1adb7144e"

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
