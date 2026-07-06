cask "flashcard" do
  arch arm: "-arm64", intel: ""

  version "1.0.0"
  sha256 arm:   "f56987a4a06e20c463eb86ab8cf5b1148bb2724912a814fd3382c5d2a4994ea6",
         intel: "5057d33b52d4efc44f7c55e96346fdbaeee5e0fbd8df9b8b1d27c37755f1638e"

  url "https://github.com/allisterk2703/flashcard/releases/download/v#{version}/FlashCard-#{version}#{arch}-mac.zip"
  name "FlashCard"
  desc "Simple, fast and elegant flashcards app with spaced repetition"
  homepage "https://github.com/allisterk2703/flashcard"

  app "FlashCard.app"

  zap trash: [
    "~/Library/Application Support/FlashCard",
    "~/Library/Preferences/com.allisterkohn.flashcard.plist",
    "~/Library/Saved Application State/com.allisterkohn.flashcard.savedState",
  ]

  caveats do
    <<~EOS
      FlashCard is not notarized by Apple. If macOS blocks the first launch,
      either right-click the app and choose "Open", or clear the quarantine flag:
        xattr -dr com.apple.quarantine /Applications/FlashCard.app
    EOS
  end
end
