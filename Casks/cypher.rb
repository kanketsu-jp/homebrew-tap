cask "cypher" do
  version "0.1.0.2041"
  sha256 "2b7cd11127d7bf25242f329a73104ad7ca1e5cca87ad36b49260747dc422315f"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0.2041-274fbd7/Cypher.zip"
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
