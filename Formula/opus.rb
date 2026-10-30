class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.1/opus_0.7.1_darwin_arm64.tar.gz"
      sha256 "4e15940ead6708076e3f59db3ec438d62dcbb844eb4c7d4a299d761f99df125f"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.1/opus_0.7.1_darwin_amd64.tar.gz"
      sha256 "6225121a3c7b1730e2c7c9ac762b3605eda56963cb05aa358da97e0ed5d8ba51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.1/opus_0.7.1_linux_amd64.tar.gz"
      sha256 "d53fb3191dc55a43479963003bd7043b85d40106926b224e5a1e2724c2b4e760"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.1/opus_0.7.1_linux_arm64.tar.gz"
      sha256 "641c8796d0560bf9fe9aa35c9de927e43305399f39f9a9496b937c723a00de94"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
