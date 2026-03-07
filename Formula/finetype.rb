class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.4/finetype-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "55f6f6c2c74fc28da334672357d1a632a496fd89f9348391907a8774bb1c4b6a"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.4/finetype-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "4f9cd4ffe0544702e89de1a0ceee370253dbcbddceb49728f29b4edf2af4d1b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.4/finetype-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d68f979040f21edc22e256db0e1bc554c5f2ec9d0525af1089d77d00da13f16"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.4/finetype-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c48c49c0b6ce803609c30ba1e01f826827acc38dd4afe59df3b6ea7b015ab2f4"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
