class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.9.0/nuage_0.9.0_darwin_arm64.tar.gz"
      sha256 "f71419a57236bb3dfd90031ad4ad37dc52480acae123b3f4b402a37420ec9ee5"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.9.0/nuage_0.9.0_darwin_amd64.tar.gz"
      sha256 "3e17ce5c217ccd172e743a6a10a27e1b8aae459d60817d6ae3b05416abfc2d2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.9.0/nuage_0.9.0_linux_amd64.tar.gz"
      sha256 "5caa3a7aec89c6bfdebc75635a9bcab9a8e7577db5da4fc2472d44dbfa02b301"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.9.0/nuage_0.9.0_linux_arm64.tar.gz"
      sha256 "c40ff27699a7cbb1b2b4bfba7fb32d2c305946ac81d96895a663662701e01946"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
