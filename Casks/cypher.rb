cask "cypher" do
  version "0.1.0.1990"
  sha256 "ba3b3eae8a8df7ee0d037bf5f57c0781f159535c657dceca542381ba247dbc27"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1990-e041055/Cypher.zip"
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
