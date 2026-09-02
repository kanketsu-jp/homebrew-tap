cask "cypher" do
  version "0.1.0.1987"
  sha256 "324b2481f36c71c35c2342aefde9d5d49a7e2091e2772b3277af80d8657c2c76"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.1987-c6e896b/Cypher.zip"
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
