cask "cypher" do
  version "0.1.0.1975"
  sha256 "f22b097fb416c49b2bd683351d02041191d87f6c0db4d7153261d142f8955971"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1975-577b634/Cypher.zip"
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
