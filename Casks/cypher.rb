cask "cypher" do
  version "0.1.0.1996"
  sha256 "5c9abb71bd6a4eca1c704beef62534474201c865d32c0626bacb9611b4594e51"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1996-cfcb86c/Cypher.zip"
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
