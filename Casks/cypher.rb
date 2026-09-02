cask "cypher" do
  version "0.1.0.1982"
  sha256 "c844f6a9fa0a0b6814492a99acb82bf833bd89f9da3192c8f17b34051b5bf993"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1982-f62474e/Cypher.zip"
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
