cask "cypher" do
  version "0.1.0.2306"
  sha256 "35037248e8f9085505523c81edea0620ef056a21410a7173d04544dd85533ad0"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2306-d8989ed/Cypher.zip"
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
