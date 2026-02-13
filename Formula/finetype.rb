class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects 151 data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.0/finetype-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "01cb5edc7c31783d7a9fbb5b581c5d577b440ceac5675ecbf863117cd8520415"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.0/finetype-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6df4add96c028a68289b4639b8840c16720f283326c744fa3db1402b0a641453"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.0/finetype-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73b3e8893741420fa801839b74dd7d87042fd67b8a35903ff8daf2993bfcbfe2"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.0/finetype-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af5983c7231b006e70191d715231287a39ee2821e69cc759df275a23e40ea2e0"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
