class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "b2bce3e3b2705db96ada2a491bf6e6dcd4d0f49bd0d4111799e42aa6cb2d65f2"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "6858bf1e5f186ff9483771c15a72d8025c6654b37498d7005195e039717bb911"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5cd40d002a802cad1c70f69e021ee2e867467b9e0f94daa5de6a61debfb0fd4"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.1/finetype-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f86a4d7d726faeaa6f60f3c198be49c3414a0f4a54090c17e3bd56458d4d5f4"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
