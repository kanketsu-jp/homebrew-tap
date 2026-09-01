cask "cypher" do
  version "0.1.0"
  sha256 "d8c69bcfc042a10838d18cbe037888ccef8c1953057bbdabbdfba2506b174a36"
  url "https://github.com/kanketsu-jp/cypher-dist/releases/download/cypher-v0.1.0-ff1e1cb/Cypher.zip"
  name "Cypher"
  desc "エージェントを束ねる作業台"
  homepage "https://github.com/kanketsu-jp/cypher-dist"
  depends_on macos: ">= :monterey"

  app "Cypher.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Cypher.app"]
  end

  uninstall quit: "jp.kanketsu.cypher"

  zap trash: [
    "~/.config/cypher-app",
  ]
end
