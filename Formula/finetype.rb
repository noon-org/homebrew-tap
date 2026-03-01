class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.0/finetype-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2acfc00c69614e3eae5a57d22df72e466387f3ec138b3483d5fdd9d4bc54199"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.0/finetype-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4cecda90475521779dc280e2be06328248d28f7c492eaebffe3f7575bc3d8bd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.0/finetype-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "724909a1d47b2d54a24244c0388beb9c1a34ad845caf6f804574b565cc1b8f38"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.0/finetype-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38128c04fd1bbfb431407bb3afc90f9beaf140ae1faed401d500f06cadefb165"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
