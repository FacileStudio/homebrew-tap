class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.2/opus_0.9.2_darwin_arm64.tar.gz"
      sha256 "6ab4cf40cc1b8539610a1d2e83e4ba3baaa846e6fba9dd3c1473cf7eadd5fd7d"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.2/opus_0.9.2_darwin_amd64.tar.gz"
      sha256 "75bc5449c27f27b58b9b4d0f545148dc998b8a2e65bb708d9337aed297ce0daf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.2/opus_0.9.2_linux_amd64.tar.gz"
      sha256 "99e680c606c41d93898f364940cb9813f70fa0354367895dd51a59145996806a"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.2/opus_0.9.2_linux_arm64.tar.gz"
      sha256 "0e63e4fab2519cf6457e7de52ecf0a67a94d11df833224c8e026b3c688200d23"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
