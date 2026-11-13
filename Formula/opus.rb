class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.1/opus_0.9.1_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.1/opus_0.9.1_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.1/opus_0.9.1_linux_amd64.tar.gz"
      sha256 ""
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.1/opus_0.9.1_linux_arm64.tar.gz"
      sha256 "19545d614049a8f69539195287d91086d7e5271749588d38f429d05a49f24a21"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
