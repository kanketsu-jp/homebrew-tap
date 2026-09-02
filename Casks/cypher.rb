cask "cypher" do
  version "0.1.0.2007"
  sha256 "eff910b4fe744a02b2527fffedaf8e1b0ca7fccc01743d3be6d51bef37085f4f"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2007-e105013/Cypher.zip"
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
