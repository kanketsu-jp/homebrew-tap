cask "cypher" do
  version "0.1.0"
  sha256 "64ed7b625440277aa91eca4a0fa129ef1148f30d3011e3e2d4d2678603d364e5"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0-9f43a20/Cypher.zip"
  name "Cypher"
  desc "エージェントを束ねる作業台"
  homepage "https://github.com/kanketsu-jp/cypher-dist"
  app "Cypher.app"
  zap trash: [
    "~/.config/cypher-app",
  ]
end
