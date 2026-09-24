class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.0/nuage_0.10.0_darwin_arm64.tar.gz"
      sha256 "0cf7b07a430d1fcb6068e2c202d46db4fc941cfff9c967c883405a300dc15933"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.0/nuage_0.10.0_darwin_amd64.tar.gz"
      sha256 "486cfeb4fbeb9674003fe66fc97fb6109742474348e8d87d99a36ed1c1732822"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.0/nuage_0.10.0_linux_amd64.tar.gz"
      sha256 "0a2c08c972e67ae655c3bde8a84b9ddcc0721c1d854ab6d5db1000feb00b6069"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.0/nuage_0.10.0_linux_arm64.tar.gz"
      sha256 "afef7c89c899dc5a6effc3c806aae8755fc2fcdf11985a9eee696fa11dea00bd"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
