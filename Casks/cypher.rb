cask "cypher" do
  version "0.1.0.2033"
  sha256 "3fd63854f02afd60816651babb3f4352a6a118938cbc1b33ce13afd60a0556d2"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2033-5d115a0/Cypher.zip"
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
