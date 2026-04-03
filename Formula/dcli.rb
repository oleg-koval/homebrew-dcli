class Dcli < Formula
  desc "Docker Compose and Git management CLI"
  homepage "https://github.com/oleg-koval/dcli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "dcli-#{OS.mac? ? "darwin" : "linux"}-#{Hardware::CPU.arm? ? "arm64" : "amd64"}" => "dcli"
  end

  test do
    system "#{bin}/dcli", "--help"
  end
end
