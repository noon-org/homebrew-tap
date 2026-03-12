class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://meridian.online/projects/finetype/"
  license "MIT"
  version "0.6.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.10/finetype-v0.6.10-aarch64-apple-darwin.tar.gz"
      sha256 "26fcd9f39e5ace95256d1f23cfdfde2c1935c7c60c999ee8137bbda065f7c9e3"
    else
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.10/finetype-v0.6.10-x86_64-apple-darwin.tar.gz"
      sha256 "d2ab8be85f31d0ed3e49544720b2943c27e1c6b60e83935c79b0e7ef82649c20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.10/finetype-v0.6.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a2c9e3f895b6ed23fc22f15ee20156d50efb976c6123f14630937b6d9e664ac1"
    else
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.10/finetype-v0.6.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24b7fc5b7e252e5de4a22039155faa3fcb302e82fde7e4cfc975047c1f080977"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
