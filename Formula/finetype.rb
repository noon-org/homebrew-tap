class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.7/finetype-v0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "b2a6a7c56986bcc480862d4a5e1fe520a6181c1e5c1ff7d9dc7139550a4b011a"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.7/finetype-v0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "a9a92a4d11ac85f86a28e294819a5a7f1f3534b8617a63ad9665e0d90d3046e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.7/finetype-v0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "82060981f7bc9ebd53b97d65dd01107102707a87ee92c2495c72357d4201f5bd"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.7/finetype-v0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "998f52795ec56efa897c312a903638e833571d892a35ea4a43d069e9be039e82"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
