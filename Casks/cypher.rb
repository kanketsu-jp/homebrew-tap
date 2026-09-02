cask "cypher" do
  version "0.1.0.2021"
  sha256 "b2c19dd9f7f69599550aa554758057a13222e3a6b8c9ff49979b7ac2e55df6b3"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2021-012b4ef/Cypher.zip"
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
