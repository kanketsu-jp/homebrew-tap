cask "cypher" do
  version "0.1.0.1997"
  sha256 "5b7ecfe35a6875acef6bbc59077657551535f55aa6adf7958f935252a323ec57"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1997-f997d49/Cypher.zip"
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
