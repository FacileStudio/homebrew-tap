class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.11.0/nuage_0.11.0_darwin_arm64.tar.gz"
      sha256 "f51da32f5bf80ae7ba97c1b911e4fdd35d6d46a5e8b40f92cae18dfb0850f751"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.11.0/nuage_0.11.0_darwin_amd64.tar.gz"
      sha256 "e967651f5ec412ea67be8624286b450ab9245f93335d8435e095894a3166776c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.11.0/nuage_0.11.0_linux_amd64.tar.gz"
      sha256 "77f0abf2fea54c041f54ed5122dbac9f88148eb68a850343d9c3b3894f53baf8"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.11.0/nuage_0.11.0_linux_arm64.tar.gz"
      sha256 "0c622ffa6452b73ed7326f7de0c412747754bd8f26211a5e2b59d65df55dc3bb"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
