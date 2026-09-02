cask "cypher" do
  version "0.1.0.1999"
  sha256 "6d1d95cac197fffc18abc281bd5a86db0e5aadf92d1eaff4439ba560ad2dab21"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1999-d699ccc/Cypher.zip"
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
