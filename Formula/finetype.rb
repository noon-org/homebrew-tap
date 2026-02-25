class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.3.0/finetype-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad5c08b5fbbfd2d1d638956c86841fc11fb2b7049f4577ddceed3c2173ae57b1"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.3.0/finetype-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "aefab429146df2379edba24302e95e465ed7a69d2b86bbc5c364952858b3ee83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.3.0/finetype-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7be9d8ad6f88522c2fd753ce3edabacb66748db81aed2a5610ae313218e0320"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.3.0/finetype-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2b0ca5b70ebeee8e1d75fe596fad0dbb2f343b76a8e61465552bfbe721ef1c1"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
