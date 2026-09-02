cask "cypher" do
  version "0.1.0.2024"
  sha256 "44ef513ee505ffad64c73482ae83af215cb5266b861e709dbc4745d3acbd45ec"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2024-304d630/Cypher.zip"
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
