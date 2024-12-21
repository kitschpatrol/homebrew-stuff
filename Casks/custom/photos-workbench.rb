cask "photos-workbench" do
  version "1.3.3"
  sha256 "dd9a5a4da05cf515fde95e35f3074098106c677a113e2423528828f8ed561dd4"

  url "https://www.houdah.com/photosWorkbench/download_assets/PhotosWorkbench#{version}.zip"
  name "Photos Workbench"
  desc "Organize, rate, and compare your photos"
  homepage "https://www.houdah.com/photosWorkbench/"

  livecheck do
    url "https://www.houdah.com/photosWorkbench/releaseNotes.html"
    regex(/Photos Workbench (\d+(?:\.\d+)+)/i)
  end

  app "Photos Workbench.app"
end
