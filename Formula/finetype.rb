class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "559a07429cc668a7500227a54ad6472eb5fa512126049bdb626164b0072b264f"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d692d7e00ba42b9b75733045e516c4da6ed8e1b1e273e72eeffc6f266b967f30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0c4065a6030d9a58bcd51fed51cfe29b66549831de59c27951c3817eb24d028"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.0/finetype-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ecac6131bc079a3ee3cc490f1af18dbaaa966b4895dda721147fbde3ac4059d7"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
