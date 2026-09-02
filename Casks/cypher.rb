cask "cypher" do
  version "0.1.0.2004"
  sha256 "d57cebf106d45ec2f9205b863ab33c876035889502253ad2702f83cf3b97e9ab"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2004-f2ea5e7/Cypher.zip"
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
