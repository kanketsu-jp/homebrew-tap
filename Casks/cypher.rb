cask "cypher" do
  version "0.1.0.2030"
  sha256 "fa1a80b12d390af87f7b73155b52c3c32d41d96d914b4f8d99f0a918a1d6a109"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2030-6f1ea26/Cypher.zip"
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
