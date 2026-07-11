cask "flashcard" do
  arch arm: "-arm64", intel: ""

  version "1.1.0"
  sha256 arm:   "e6dcdadcef8ea7f441605f79a6887c677f699a28594c2b3b5cdeb45a5cccd552",
         intel: "62673cbc4e806058157faa8a15a42b7c2ee6bd7d8fe8c486e6d549485ddfdb88"

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
