cask "cypher" do
  version "0.1.0.2002"
  sha256 "a732ab97fac39c288c05697de592a7e99bcf2547657d4684f2580f326d93877e"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2002-56ab74c/Cypher.zip"
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
