class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.2/nuage_0.10.2_darwin_arm64.tar.gz"
      sha256 "9c8275012b64cb5d20b36fe33700a77106cdb1ac322b92a9737c86f9a7aac520"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.2/nuage_0.10.2_darwin_amd64.tar.gz"
      sha256 "12cb8ed8da03e283b2caaeecf5f3e1005fd6e1dd0e32d2d9ff2049e2776d254d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.2/nuage_0.10.2_linux_amd64.tar.gz"
      sha256 "916aa280a31c9cc4fb19598ae888780902c9415b290736a0c145817f42ecfe4e"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.2/nuage_0.10.2_linux_arm64.tar.gz"
      sha256 "e5cb97b5295f23e07fecbe547c09f87d518beba976b940d3e56407398c604a21"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
