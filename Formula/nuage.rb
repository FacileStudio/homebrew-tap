class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.1/nuage_0.8.1_darwin_arm64.tar.gz"
      sha256 "c66609595b4c1d2c1cd221b06e2656b3242d536a6b791eb1f5d7460a3691eceb"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.1/nuage_0.8.1_darwin_amd64.tar.gz"
      sha256 "aeb8fc40c8ac9efde75d4bad2099d2ad0bb29008fcffc0c38bcb8b949d763c1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.1/nuage_0.8.1_linux_amd64.tar.gz"
      sha256 "0193973ea73b9aa205aed7fe0d91054ff8dd94bd038a7f0c093ed3662937c8c2"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.8.1/nuage_0.8.1_linux_arm64.tar.gz"
      sha256 "17a7c05b5f83144f69846d210db97550dd41d82542671d52db7ce0e10effa84a"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
