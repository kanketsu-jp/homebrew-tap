cask "cypher" do
  version "0.1.0.2005"
  sha256 "e91088172ea2d4596574b18f1f2dd2960fa0e7de8e67708d1c9f5ddc2f0bdfa8"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2005-80bfa79/Cypher.zip"
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
