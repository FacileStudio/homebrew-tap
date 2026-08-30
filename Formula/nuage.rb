class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.6.0/nuage_0.6.0_darwin_arm64.tar.gz"
      sha256 "1a675af50ec5fec22f9801f864849dd706f477e402b5b5316844cd569560e1f9"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.6.0/nuage_0.6.0_darwin_amd64.tar.gz"
      sha256 "a2100b70bc6ea6a5b172007755ba1b3babb052ef8671c902a56758cf72223a86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.6.0/nuage_0.6.0_linux_amd64.tar.gz"
      sha256 "7ed70eafe7fb6125c6b474ac17624c5ef48954f284961de253dda849f3772fae"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.6.0/nuage_0.6.0_linux_arm64.tar.gz"
      sha256 "d4979c8eef9d95800fbc25abdb15cafb829323f29dc9a3f17a769ea9d1149e68"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
