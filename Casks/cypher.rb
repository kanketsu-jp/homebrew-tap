cask "cypher" do
  version "0.1.0.2306"
  sha256 "3591a923e90030867b558c370a7b2ac343a01090753b64d06bed686646818f77"
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
