class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "822f86fba31ac3609993c7fb5c8aa10ca76d2921e2b02001e81a83bb0002185c"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "91e5f81dcfd24695c72924bde220f861fa4afd7eaeb4e9a25d80c2785c408b7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9ea62ae29f8f34fdec95da9071b1e0c37ad84a4be7cd8e50c32780fe012d78d"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c9068cdcbbd21aec4d5c12a8b0922d44cf53c582274d797a93f9e6182f43882"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
