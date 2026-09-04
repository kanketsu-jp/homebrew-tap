cask "cypher" do
  version "0.1.0.2316"
  sha256 "767d99d0d9e77689cbf29bf2dff46259c8ad2b46c9a620b8ff00e914bd52d479"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2316-e2a9a5e/Cypher.zip"
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
