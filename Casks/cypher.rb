cask "cypher" do
  version "0.1.0.2309"
  sha256 "cd923b05293c3129abaedc47c4cee6ef5f071650df901d1c98a6bb694d252e9f"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2309-6adfc57/Cypher.zip"
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
