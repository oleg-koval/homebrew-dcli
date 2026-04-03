class Dcli < Formula
  desc "Docker Compose and Git management CLI"
  homepage "https://github.com/oleg-koval/dcli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-arm64.tar.gz"
      # SHA256 will be updated on release
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-amd64.tar.gz"
      # SHA256 will be updated on release
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-amd64.tar.gz"
      # SHA256 will be updated on release
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-arm64.tar.gz"
      # SHA256 will be updated on release
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  # The release tar.gz contains the binary named dcli-{os}-{arch}
  # Install method automatically detects OS and architecture
  def install
    bin.install "dcli-#{OS.mac? ? "darwin" : "linux"}-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "dcli"
  end

  # TODO: Add bottle configuration once formula is widely used for caching prebuilt binaries
  test do
    output = shell_output("#{bin}/dcli --help")
    assert_match "Docker Compose and Git", output
  end
end
