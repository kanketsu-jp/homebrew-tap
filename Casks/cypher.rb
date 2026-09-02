cask "cypher" do
  version "0.1.0.1960"
  sha256 "5bc8a892d4dc2dee8812ea93750666591bd11c35d01206879afa6ea9b5c6a92a"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1960-41b213f/Cypher.zip"
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
