cask "mac-os-7" do
  version "2023.10.28"
  sha256 "e8f41916ae96eb6dfa19f188c654132548ac1ca0774508cb77e09f3d483c0d8b"

  url "https://mendelson.org/System761.zip"
  name "mac-os-7"
  desc "Mac OS 7 Emulator via BasiliskII"
  homepage "https://mendelson.org/macos9osx.html"

  app "System761.app", target: "Mac OS 7.app"
end
