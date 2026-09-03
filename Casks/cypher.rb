cask "cypher" do
  version "0.1.0.2043"
  sha256 "fd02cd809f025d86663ae2843ad28c918c973a397f41ee33d55cc87ea8268c59"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2043-f9dc160/Cypher.zip"
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
