cask "cypher" do
  version "0.1.0.2000"
  sha256 "8813d5dc3ad2168623ad99f8f5fb9662e039ec84f137f8e06a48bd56ba31038a"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2000-6a7ec40/Cypher.zip"
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
