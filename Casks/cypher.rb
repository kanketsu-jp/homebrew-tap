cask "cypher" do
  version "0.1.0.2048"
  sha256 "881802b9b471fe4c76f3a05bcecb5888025679858f52126ce69616e771545194"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2048-929d9da/Cypher.zip"
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
