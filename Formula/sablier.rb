class Sablier < Formula
  desc "Terminal client for Sablier time tracking"
  homepage "https://github.com/FacileStudio/sablier-cli"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.1/sablier_0.5.1_darwin_arm64.tar.gz"
      sha256 "4efab979b0e4af6e99531c2d34102148735a75f1b8a40c069259e399aca448eb"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.1/sablier_0.5.1_darwin_amd64.tar.gz"
      sha256 "569babaf170dcbc26a68a34b36287ef14e36f613fb7a9ab93f4f45a371cd788c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.1/sablier_0.5.1_linux_amd64.tar.gz"
      sha256 "a55582ddd95bcbd87c4cf4cd3ca2350c1a86ca81ba92f60bbdd1e66caa13dc91"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.1/sablier_0.5.1_linux_arm64.tar.gz"
      sha256 "77497e17342e11f006fc03280420ab154f06588fc3c56301937337a06ae54bb3"
    end
  end

  def install
    bin.install "sablier"
  end

  test do
    system "#{bin}/sablier", "--version"
  end
end
