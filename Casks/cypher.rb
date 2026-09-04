cask "cypher" do
  version "0.1.0.2267"
  sha256 "2c771858b22cea4abe665e0b8d1be2157d37caf22f6bd9655b2af8df8b2e7da8"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2267-8129f2d/Cypher.zip"
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
