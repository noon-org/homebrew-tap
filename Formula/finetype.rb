class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "79c6f8f55d350003d207f91ab4ae6fc2219113b5e8e624962b9c680e6fdef23c"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "8685e1bf91a257af2b876096046891d1f0414ed7cc16601b7433f37dd385f4dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9bae5dd55e2f1e7546db28295627b1c19116a9f90b74b8553003f6cf26964b5"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72310a2fccac9813928901a1745f5afdb02772d65d5d96fca2fcb0ebde88f214"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
