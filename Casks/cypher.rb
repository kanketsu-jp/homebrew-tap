cask "cypher" do
  version "0.1.0.2018"
  sha256 "5d30df3a9fad5c3621fac0a25137da4f28976640b0ec311c0a2b91aa2ffc023c"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2018-913f0dc/Cypher.zip"
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
