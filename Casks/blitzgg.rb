cask "blitzgg" do
  version :latest
  sha256 :no_check

  url "https://dl.blitz.gg/download/mac"
  name "blitz.gg"
  desc "Your personal gaming coach"
  homepage "https://blitz.gg/"

  app "Blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
  ]
end
