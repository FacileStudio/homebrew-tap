class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.1/nuage_0.12.1_darwin_arm64.tar.gz"
      sha256 "5ec843420318cf68f732359358b9e9f7e4e036553d6b95e94219cb56b923a125"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.1/nuage_0.12.1_darwin_amd64.tar.gz"
      sha256 "45be92a2d6c9be9cee90fb36472f1f368b3fd338e6dc228ecc25d6296262b901"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.1/nuage_0.12.1_linux_amd64.tar.gz"
      sha256 "e2fdfa027b0f21d7dd8743eb7cea8d908ddc55a00f1214dafd3d210744f97bc8"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.12.1/nuage_0.12.1_linux_arm64.tar.gz"
      sha256 "70d665f161efcfac695b41437da7ac4a378085d13c79a9a674799f7e42d52ffa"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
