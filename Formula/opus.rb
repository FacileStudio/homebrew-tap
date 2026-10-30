class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.0/opus_0.7.0_darwin_arm64.tar.gz"
      sha256 "95e7f4af811cbde7781055a9336c45c67357155400bccc47a01e16e89372de29"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.0/opus_0.7.0_darwin_amd64.tar.gz"
      sha256 "ee14e5889610de90f82f7f96e85557db050c3027fb8cbd14fc9f7acb281fe05c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.0/opus_0.7.0_linux_amd64.tar.gz"
      sha256 "f8179c622ca409f72386761d6033bac56b0aa1d97f6eb57bc2a3ae9a1cee2fab"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.7.0/opus_0.7.0_linux_arm64.tar.gz"
      sha256 "813aa7aa408a8699b355ed7c02e32525d1315449ffdedd6f4c49c5549e502772"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
