cask "timezy" do
  version "0.1.1"
  sha256 "9c4adb066d67b585ca68fd8a2eff1fbab203281c287620184cd5d62debedaa36"

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
