cask "cypher" do
  version "0.1.0.2003"
  sha256 "1b76ed4d83d5664eea3a9885a15593b18ad22f7c6433413436b98cc533a2496d"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2003-09c00aa/Cypher.zip"
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
