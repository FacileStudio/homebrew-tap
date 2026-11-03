class Sablier < Formula
  desc "Terminal client for Sablier time tracking"
  homepage "https://github.com/FacileStudio/sablier-cli"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.0/sablier_0.5.0_darwin_arm64.tar.gz"
      sha256 "5d092197376425f5f2a577de5beebfb425d635e3739c99a5382944232bb49f2c"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.0/sablier_0.5.0_darwin_amd64.tar.gz"
      sha256 "b1f6d6c181a9d6683c0b74fb6e0a4a5a714cfe791447bba1f94bc0c550113cbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.0/sablier_0.5.0_linux_amd64.tar.gz"
      sha256 "0e33fb94532e0aa07fbd63e22818bd7bea41419cbf7568423e47dac1770169df"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.5.0/sablier_0.5.0_linux_arm64.tar.gz"
      sha256 "fecceb197e1f0804636ceac3eab559cb8e3546c33976265148136a207ec5cfba"
    end
  end

  def install
    bin.install "sablier"
  end

  test do
    system "#{bin}/sablier", "--version"
  end
end
