class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.0/nuage_0.12.0_darwin_arm64.tar.gz"
      sha256 "d2a9815782424e69a17ebba991c93271726d3213778025f4e5d45710603b917e"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.0/nuage_0.12.0_darwin_amd64.tar.gz"
      sha256 "89f5e1bb1c8bde4dfcf3ef6b2c0efc4cb29982be3b32572ef9f1c5e3bbbab4ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.0/nuage_0.12.0_linux_amd64.tar.gz"
      sha256 "e7839b8b31cf44d7da1608a1aa755ac311e433f088bf946ad4c28d96b530ec87"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.0/nuage_0.12.0_linux_arm64.tar.gz"
      sha256 "52509c505c08c1728132d62fb43091e217a4f4d5ea4ddb98dc8169f3c5b95465"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
