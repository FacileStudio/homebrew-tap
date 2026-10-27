class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.1/opus_0.6.1_darwin_arm64.tar.gz"
      sha256 "143edfb7b2954047d9a6102a42733e1de8fa8bfff6a3b1cdc07cce9bd78d11fc"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.1/opus_0.6.1_darwin_amd64.tar.gz"
      sha256 "ef5e7e0f5455ee857f723ce04df373dc0e95190066e9ce937308b4b0f6a676a0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.1/opus_0.6.1_linux_amd64.tar.gz"
      sha256 "e55b7009b8c66d987e56301650cdf213384dc4b04774bbecfbc899cbaa3a7545"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.6.1/opus_0.6.1_linux_arm64.tar.gz"
      sha256 "c9ba69678b8b16a6b1daca7ed680cec7f5ed5ab6887278532299186abeae24cd"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
