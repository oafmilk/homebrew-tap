cask "timezy" do
  version "0.1.1"
  sha256 "c5426065238ec7ae156d727064966bb365c9ff72e620a6f9a753521cca1604ec"

  url "https://cdn.ethanr.io/Timezy-#{version}.dmg"
  name "Timezy"
  desc "Simple timezone app"
  homepage "https://ethanr.io/"

  depends_on macos: ">= :ventura"

  app "Timezy.app"

  uninstall quit: "io.ethanr.timezy"

  zap trash: [
    "~/Library/Application Scripts/io.ethanr.timezy",
    "~/Library/Containers/io.ethanr.timezy"
  ]
end