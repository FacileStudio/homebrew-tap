class Sablier < Formula
  desc "Terminal client for Sablier time tracking"
  homepage "https://github.com/FacileStudio/sablier-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.6.0/sablier_0.6.0_darwin_arm64.tar.gz"
      sha256 "663ac186eee88cd740231fc3112761a9c07fd95abc78fd9c439af327891faf46"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.6.0/sablier_0.6.0_darwin_amd64.tar.gz"
      sha256 "90818dae93d61d970960fe6d9fcbbf74556fdc9d065db559c5d148e18f629f26"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.6.0/sablier_0.6.0_linux_amd64.tar.gz"
      sha256 "73149c5ecb795f3003484efcdb082883a461dd787b937b5b9aefc1fda43a826f"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.6.0/sablier_0.6.0_linux_arm64.tar.gz"
      sha256 "e75cb8ddba4492d530271d482f142e9b0ab96ba8f869c797fc474f35fa9778a4"
    end
  end

  def install
    bin.install "sablier"
  end

  test do
    system "#{bin}/sablier", "--version"
  end
end
