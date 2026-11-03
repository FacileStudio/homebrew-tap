class Casier < Formula
  desc "Terminal client for Casier, the self-hosted secrets manager"
  homepage "https://github.com/FacileStudio/casier-cli"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.2/casier_0.4.2_darwin_arm64.tar.gz"
      sha256 "720620383750349df60d5d9c0d231608c1957cd149ced0dfba8dba39d3052e7d"
    else
      url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.2/casier_0.4.2_darwin_amd64.tar.gz"
      sha256 "57949b6139cc2680d19426841e7881197f79572d162ac36768df48c5eaaecf64"
    end
  end

  on_linux do
    url "https://github.com/FacileStudio/casier-cli/releases/download/v0.4.2/casier_0.4.2_linux_amd64.tar.gz"
    sha256 "55f30d70e9f0d2e9e4ebdeb27650813dd2a2545891da5fd69714ae905f05424a"
  end

  def install
    bin.install "casier"
  end

  test do
    system "#{bin}/casier", "--version"
  end
end
