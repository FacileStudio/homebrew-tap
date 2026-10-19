class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.0/opus_0.6.0_darwin_arm64.tar.gz"
      sha256 "bce8666d1ec2f8327ec0dffa89dcd596e946aff83cd254d13986638e194ec16b"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.0/opus_0.6.0_darwin_amd64.tar.gz"
      sha256 "cccdf9ebf9bc78a08af0f87532091d488ca74c9c35399892a717f9124c4a7778"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.0/opus_0.6.0_linux_amd64.tar.gz"
      sha256 "d4d4f9c96093189cfc48a5b762f9f860944dcd93407f2952e97e7da30413701c"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.0/opus_0.6.0_linux_arm64.tar.gz"
      sha256 "18f311025c7de837b7aa13883872cd5e5b94f9d5fbddd8a47c53795decbf374d"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
