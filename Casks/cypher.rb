cask "cypher" do
  version "0.1.0.1991"
  sha256 "5eee4d00b2b051b5a92c42894f262005a296910fe6695e118675bb979b3c0f1c"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1991-4def025/Cypher.zip"
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
