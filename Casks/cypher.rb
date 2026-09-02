cask "cypher" do
  version "0.1.0.2034"
  sha256 "2921b1ffddd33aa29c787569648e0308083bced2121245b2d691dea50d8a9035"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2034-9fe4405/Cypher.zip"
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
