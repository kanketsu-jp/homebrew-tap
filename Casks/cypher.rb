cask "cypher" do
  version "0.1.0.2008"
  sha256 "ed111882bc9aa971ffd75ffa7ec886cb283e616c52ab65a32554e2acae190dac"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2008-aa6c991/Cypher.zip"
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
