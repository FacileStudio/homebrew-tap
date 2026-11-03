class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.8.0/opus_0.8.0_darwin_arm64.tar.gz"
      sha256 "ea7f6fc0aa15dc68bd24a2e6cd0e67a3219cbcd4200a2fd77210df0955b0eb64"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.8.0/opus_0.8.0_darwin_amd64.tar.gz"
      sha256 "e1e06eaa6491c136774bfabd29fa1bb7233226788bb5c9372b8cadc58eadf2a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.8.0/opus_0.8.0_linux_amd64.tar.gz"
      sha256 "008300ecc56fa5a1442b6839c3a54c611f7e490b296a10ebaff1388a78e4030a"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.8.0/opus_0.8.0_linux_arm64.tar.gz"
      sha256 "afdb1cb97ba3d18a315297781f74f6c6b1c5c89822cd75280ee584e212f8b03e"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
