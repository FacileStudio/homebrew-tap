class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.5.0/nuage_0.5.0_darwin_arm64.tar.gz"
      sha256 "7c56170fd9836fd176edddca1d2bfcdfb37658e1d795449c567f914430323f4c"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.5.0/nuage_0.5.0_darwin_amd64.tar.gz"
      sha256 "883cc039f75e4e1225fd7c9cbddc5193de9a4149aa8887e8bdf057e92e0d8294"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.5.0/nuage_0.5.0_linux_amd64.tar.gz"
      sha256 "57a645df9c5eb404c82042147cae0fe6bad1218835c3eec5b92fa525a6f6775e"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.5.0/nuage_0.5.0_linux_arm64.tar.gz"
      sha256 "c29a04de56059c0f4d24bb4d4eaa63e8a4935e319ededbf52b897e08d200ef3a"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
