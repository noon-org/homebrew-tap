class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "b058f8e9796e0c3a348a5baf8ceec433d726cdbdaac9fa38f5e567d74e7d5f0b"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "981304e127dbba5e8176cff5691a30baa3585b2cbbe812c566725d04d20fcaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8277d4c9e50de471625d90530dd94f2f0e177cf69dfd399604f687d5fba03f55"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcf7260691637e39634ce55be9ebb747eb6d81978555b9ee5a7b48d637477770"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
