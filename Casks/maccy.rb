cask "maccy" do
  version "0.21.0,7"
  sha256 "54cb34d7c4d8cff2bdd8f6f22fafffa457136436dd4d66398a16bbe4837ecae3"

  url "https://github.com/p0deje/Maccy/releases/download/#{version.before_comma}/Maccy.app.zip",
      verified: "github.com/p0deje/Maccy/"
  name "Maccy"
  desc "Clipboard manager"
  homepage "https://maccy.app/"

  livecheck do
    url "https://raw.githubusercontent.com/p0deje/Maccy/master/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Preferences/org.p0deje.Maccy.plist",
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
      ]
end
