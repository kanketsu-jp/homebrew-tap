cask "cypher" do
  version "0.1.0.2010"
  sha256 "932b1b6f99e1cf3041baef9ca00a9f3da5183b01ff517d4d035046c83e27eaf8"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2010-fba067f/Cypher.zip"
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
