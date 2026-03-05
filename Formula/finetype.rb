class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "4d67639d97fccd27968f4dbd37dcbd28ce8acd205362343ff9d8754ef1ff7a95"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "fc225909b294d16c19b7842eb083765dd2f9305654e3e5ea8afd1fd03b10dc6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0ca63c75743913e0f293eb6d3783485829aa1920f663d1f906724b5aac0da04"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.0/finetype-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c55ebec73fb1e9926cd1a7f033b5b4aa9241d5e576a5edb5ccdb0710afb29e71"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
