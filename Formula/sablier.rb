class Sablier < Formula
  desc "Terminal client for Sablier time tracking"
  homepage "https://github.com/FacileStudio/sablier-cli"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.4.2/sablier_0.4.2_darwin_arm64.tar.gz"
      sha256 "fa70cc944854d902432717182dbd65473ca4fa9bb31162968ac9988f28b56c14"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.4.2/sablier_0.4.2_darwin_amd64.tar.gz"
      sha256 "556ccd1c1a0d225bc0c800b4d49cb805dd8e4f1da85ae6c88eeccdf5cab89271"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.4.2/sablier_0.4.2_linux_amd64.tar.gz"
      sha256 "2a472e53ff51543a38597921838e6c8bab3c41fb0db22890c4fc3ceb53427d0b"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.4.2/sablier_0.4.2_linux_arm64.tar.gz"
      sha256 "b3dbae80b8e63c002cbc40c1240a778dd9b5d80556c2c20d94bc08fdb7117147"
    end
  end

  def install
    bin.install "sablier"
  end

  test do
    system "#{bin}/sablier", "--version"
  end
end
