cask "cypher" do
  version "0.1.0.1969"
  sha256 "a508b90cddb5762412be88a59d0bfb0b08a7c1d30882cf37836786620c711ffd"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1969-16faa47/Cypher.zip"
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
