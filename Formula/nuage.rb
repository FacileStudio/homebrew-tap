class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.0/nuage_0.8.0_darwin_arm64.tar.gz"
      sha256 "e8caae793948c47b9641e77476bd1af6f7451bd5cc3c33da803d784210ac8226"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.0/nuage_0.8.0_darwin_amd64.tar.gz"
      sha256 "1b8fcd2c3a499880335479dc7d3f9646185e17de508be0533ca80e0e47e2c216"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.0/nuage_0.8.0_linux_amd64.tar.gz"
      sha256 "4399d6a23bc39651be48d3ee7072ce79672a4f95159983a262157b6ff8cef3b0"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.0/nuage_0.8.0_linux_arm64.tar.gz"
      sha256 "83934db7b3cb862797e6d78170dc29e78bcf524db088846ecc98002aaaa6297c"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
