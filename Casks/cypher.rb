cask "cypher" do
  version "0.1.0.1994"
  sha256 "905c395af5b0d5bf7a087800c7fbf65393463272a5ebe9c0bfbd88ad975e457b"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1994-50b6431/Cypher.zip"
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
