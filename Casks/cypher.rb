cask "cypher" do
  version "0.1.0.1966"
  sha256 "2b79399a882d6007edb8180998c5dab834f098d543099859d36ae8840ea0106b"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1966-de892e3/Cypher.zip"
  name "Cypher"
  desc "エージェントを束ねる作業台"
  homepage "https://github.com/kanketsu-jp/cypher-dist"
  depends_on macos: :monterey

  app "Cypher.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Cypher.app"]
  end

  uninstall quit: "jp.kanketsu.cypher"

  zap trash: [
    "~/.config/cypher-app",
  ]
end
