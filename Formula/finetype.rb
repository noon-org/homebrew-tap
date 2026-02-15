class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.3/finetype-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9cc4cb72b333844831b29ea7646810c8d1a46d3a4a16c53f548282d45af6808b"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.3/finetype-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "2388dcfbd2ae6ab956790d565887bd3629bdcc253d67461963aee47b350cc054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.3/finetype-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "459c542718765b6ee0347aec0f0e47d661e21b516358210adde00cc795e1c198"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.3/finetype-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0eb8dd92ee1a98f204a6927ebaaf23d539194b62414d420f48544e8720c56e8c"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
