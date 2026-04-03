class Dcli < Formula
  desc "Docker Compose and Git management CLI"
  homepage "https://github.com/oleg-koval/dcli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-arm64.tar.gz"
      sha256 "138ed5cc840286c4040e2c5b77f038bf3cb8b16c89c4b5030d289ac74e5fb135"
    end
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-darwin-amd64.tar.gz"
      sha256 "bb77c28361e2fe289fcf7d83723d05791a4d670548d59a923fc99b983ff9a1c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-amd64.tar.gz"
      sha256 "6001b60b6b6dcec242a90bb54c0cb37a95d11b728f0b053f26c6d3fd1ac9b640"
    end
    on_arm do
      url "https://github.com/oleg-koval/dcli/releases/download/v0.1.0/dcli-linux-arm64.tar.gz"
      sha256 "3651e008a54259b544c387febd206ff147c294b44faf16927bdb43eb0e7e85cf"
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
