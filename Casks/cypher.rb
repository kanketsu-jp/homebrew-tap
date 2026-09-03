cask "cypher" do
  version "0.1.0.2045"
  sha256 "bb7297ea7b04a77438f5081fdee3a88954f7a78d3dd18f2d401dd53cd3832656"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2045-89d4e9d/Cypher.zip"
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
