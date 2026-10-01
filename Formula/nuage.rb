class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.10.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.3/nuage_0.10.3_darwin_arm64.tar.gz"
      sha256 "b70e8db0d93f583b5d31276729c24415246c33214595100a0a9cf18131770350"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.3/nuage_0.10.3_darwin_amd64.tar.gz"
      sha256 "9e8185279d33188ee05159ea406e71f30975bc2a47125a8de5ba9d0784851cce"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.3/nuage_0.10.3_linux_amd64.tar.gz"
      sha256 "831f5b6601a1695f065a06626ec1683808de5ddcbf923a89a5be1c7d6260ae14"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.3/nuage_0.10.3_linux_arm64.tar.gz"
      sha256 "a9bc047cf0f9593cdbbade2b1dfe82f49f1af3f2ea402733cb67e5c2c60725e6"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
