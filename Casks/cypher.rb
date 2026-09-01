cask "cypher" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/kanketsu-jp/cypher-dist/releases/latest/download/Cypher.zip"
  name "Cypher"
  desc "エージェントを束ねる作業台"
  homepage "https://github.com/kanketsu-jp/cypher-dist"

  app "Cypher.app"

  zap trash: [
    "~/.config/cypher-app",
  ]
end
