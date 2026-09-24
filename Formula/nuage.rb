class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.7.1/nuage_0.7.1_darwin_arm64.tar.gz"
      sha256 "bf3fe0dad3cff9e4a88331a295a4f41da1631a70be148f078e74b16e5479d9ee"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.7.1/nuage_0.7.1_darwin_amd64.tar.gz"
      sha256 "f19e4e4b0addfb00435fec055bb150c19f933c91d443c5b1de62e6d82f271d77"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.7.1/nuage_0.7.1_linux_amd64.tar.gz"
      sha256 "cdb89b9a909529c8907a6f6237aca86f76f1ba21dbee10aa9c73eb91883b3dff"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.7.1/nuage_0.7.1_linux_arm64.tar.gz"
      sha256 "ce46bc65028df0126d7f00992ad90ed91e4350686d92c9aaa2bc9138f002b716"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
