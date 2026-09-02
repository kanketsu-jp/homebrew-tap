cask "cypher" do
  version "0.1.0.1984"
  sha256 "70872ba15c5a17a6ff7dad1e5546d44322541fa107d557f5c9ac1f5cb1e0f2c0"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1984-205f0e2/Cypher.zip"
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
