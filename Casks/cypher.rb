cask "cypher" do
  version "0.1.0.2046"
  sha256 "6bfad0067fce65525e3bc62ee7c0b9b41ca4d8ebf9525152e759c5fd1f87b4ed"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2046-c5972b8/Cypher.zip"
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
