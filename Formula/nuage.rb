class Nuage < Formula
  desc "Sync daemon and terminal client for Nuage, the self-hosted cloud storage"
  homepage "https://github.com/FacileStudio/nuage-cli"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.1/nuage_0.10.1_darwin_arm64.tar.gz"
      sha256 "3de7fc6f53016929fb008ef355c2aa3a673b0af5f2f68c79d995c2eb03984b5d"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.1/nuage_0.10.1_darwin_amd64.tar.gz"
      sha256 "150d76115060c7156fa6e430fc97023aad8692be085ee28377e5f828ddb94239"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.1/nuage_0.10.1_linux_amd64.tar.gz"
      sha256 "08254007669331828df0de6aec2454f82f7581bded7a1fb9969b26174f37a056"
    else
      url "https://github.com/FacileStudio/nuage-cli/releases/download/v0.10.1/nuage_0.10.1_linux_arm64.tar.gz"
      sha256 "ce8974cd224c649bd3d919b38f42485331f75c86c73517cfac9b15c643c110d0"
    end
  end

  def install
    bin.install "nuage"
  end

  test do
    system "#{bin}/nuage", "--version"
  end
end
