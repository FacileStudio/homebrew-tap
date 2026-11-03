class Opus < Formula
  desc "Keyboard-driven terminal client for Opus project management"
  homepage "https://github.com/FacileStudio/opus-cli"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.0/opus_0.9.0_darwin_arm64.tar.gz"
      sha256 "38bea03b9f8649a26a4fd5d6e618e521fe0417117f2586034289449c476820f5"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.0/opus_0.9.0_darwin_amd64.tar.gz"
      sha256 "9646180718ddf87b7fa4b57ef13a59884f905031c86ec57fe8cb3f867b22737d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.0/opus_0.9.0_linux_amd64.tar.gz"
      sha256 "78f768ac73fa29c705d935fd897aaa9b0252e240baf951e4d033027fc4c8812a"
    else
      url "https://github.com/FacileStudio/opus-cli/releases/download/v0.9.0/opus_0.9.0_linux_arm64.tar.gz"
      sha256 "aa63dd9d1b233ceeaccf9ac9e77187e8f82a7be6a7ebd0d76126631311b13ba2"
    end
  end

  def install
    bin.install "opus"
  end

  test do
    system "#{bin}/opus", "--version"
  end
end
