class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.4.0/finetype-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ae8575903b62a43da6a6a90c4edffc3875bac740de10240f503b5aa1f79b8a0"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.4.0/finetype-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "6b09e0598d299112741ffcd1636d8afce016f0a48c7a07a3cebaad826aa96949"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.4.0/finetype-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66264e41663bb3181f9683245669e526cf4f76d1c914d0c9c4d6015a91e5356d"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.4.0/finetype-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11f7c48e76851eb99ad43ad33f05f6004d5a1d1a6ce301aa9b5e0e747d884760"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
