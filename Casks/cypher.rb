cask "cypher" do
  version "0.1.0.2001"
  sha256 "909c0c449e906aafdd456cfd8561513bf9dd283cc144e7f4193920d2ef26d345"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2001-7043f25/Cypher.zip"
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
