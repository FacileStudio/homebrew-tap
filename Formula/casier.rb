class Casier < Formula
  desc "Terminal client for Casier, the self-hosted secrets manager"
  homepage "https://github.com/FacileStudio/casier-cli"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.3/casier_0.4.3_darwin_arm64.tar.gz"
      sha256 "8e8d0ec963d110088a7174169f6f530f4c81245504a432d85e1142c4129ef8b5"
    else
      url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.3/casier_0.4.3_darwin_amd64.tar.gz"
      sha256 "6c756a27c43ef1916f9485d4296255ed1b60ab6d9a8de373c49bad0d238320de"
    end
  end

  on_linux do
    url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.3/casier_0.4.3_linux_amd64.tar.gz"
    sha256 "deca8f7f624b9404e6a844179a6168427c6a3adb3551af39f5204bed6274d0dc"
  end

  def install
    bin.install "casier"
  end

  test do
    system "#{bin}/casier", "--version"
  end
end
