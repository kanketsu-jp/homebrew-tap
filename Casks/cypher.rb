cask "cypher" do
  version "0.1.0.2028"
  sha256 "933905ad80dcba29d677e14cba26164eb6da4e7694d6a3e849d1ee702bf2b886"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2028-5d25ed0/Cypher.zip"
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
