# Homebrew Cask formula for PowerDocument
# This file goes in the GitHub repo: visiblesoft-es/homebrew-powerdocument
# in the path: Casks/powerdocument.rb
#
# Users install with:
#   brew tap visiblesoft/powerdocument
#   brew install --cask powerdocument
#
# Update checklist when releasing a new version:
#   1. Update `version` to the new version number
#   2. Run: shasum -a 256 PowerDocument_<version>_aarch64.dmg
#   3. Update `sha256` with the new hash

cask "powerdocument" do
  version "1.1.0"
  sha256 "9270205deeabe855299d5463ba61ed047b9369628bd28c620c1df33220f43c24"

  url "https://github.com/visiblesoft-es/PowerDocument/releases/download/v#{version}/PowerDocument_#{version}_aarch64.dmg"
  name "PowerDocument"
  desc "Lightweight Markdown document reader"
  homepage "https://github.com/visiblesoft-es/PowerDocument"

  app "PowerDocument.app"

  zap trash: [
    "~/Library/Application Support/com.visiblesoft.powerdocument",
    "~/Library/Caches/com.visiblesoft.powerdocument",
  ]
end