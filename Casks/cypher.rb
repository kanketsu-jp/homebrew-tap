cask "cypher" do
  version "0.1.0.2037"
  sha256 "331897a785542f524a60498b1e29c9e1fd3ef2ee65a5f81830e6f3994c800e8f"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2037-8bcbbdc/Cypher.zip"
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
