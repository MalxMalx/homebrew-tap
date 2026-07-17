cask "free-comic-book-manga-reader" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm: "99ce40275e321503c890a36ae2ed3fd1c97d82164b0b7a1f19a23ac39549c1f4",
         intel: "45d1a3303c5768541231d96b40014f2ea73e47764549c2f4eae167f90a827c1b"

  url "https://github.com/MalxMalx/FreeComicBookMangaReader/releases/download/v#{version}/FreeComicBookMangaReader-#{version}-macOS-#{arch}.dmg"
  name "FreeComicBookMangaReader"
  desc "Free, keyboard-friendly comic book and manga reader for macOS"
  homepage "https://github.com/MalxMalx/FreeComicBookMangaReader"

  depends_on macos: :monterey

  app "FreeComicBookMangaReader.app"

  zap trash: [
    "~/Library/Preferences/com.malxmalx.freecomicbookmangareader.plist",
    "~/Library/Saved Application State/com.malxmalx.freecomicbookmangareader.savedState",
  ]
end
