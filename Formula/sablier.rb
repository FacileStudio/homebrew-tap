class Sablier < Formula
  desc "Terminal client for Sablier time tracking"
  homepage "https://github.com/FacileStudio/sablier-cli"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.3.1/sablier_0.3.1_darwin_arm64.tar.gz"
      sha256 "27c49723729e6a3a8a0ab314f61e28b199d0b72503867fef33b0f85936529e9c"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.3.1/sablier_0.3.1_darwin_amd64.tar.gz"
      sha256 "27d238bd3a1624213efe36ed7efd4ff528eaaf5a6df3dbc38de8f6fb3f227ec4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.3.1/sablier_0.3.1_linux_amd64.tar.gz"
      sha256 "ccffd49f364cd699dce63999019e35db62bf5cdea27cf4836b0f61290721e290"
    else
      url "https://github.com/FacileStudio/sablier-cli/releases/download/v0.3.1/sablier_0.3.1_linux_arm64.tar.gz"
      sha256 "e691af801399cda60b69acb6a960c8d28b5b9fd15dc073bef9cbb02fedcada4f"
    end
  end

  def install
    bin.install "sablier"
  end

  test do
    system "#{bin}/sablier", "--version"
  end
end
