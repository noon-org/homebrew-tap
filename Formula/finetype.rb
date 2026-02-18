class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.8/finetype-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "228b25064e3428e6b8d5f9638df48438ff720a3980283a4e344ee0ee060b8ea8"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.8/finetype-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "b8a865adab78f2d0db1aa07dab2837ddd66a8f527b652d9862702219fb6ecbab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.8/finetype-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "867324e7b13d0772cc4f207961f2a3ad8fbe30228a9e6ad0d5b51e2304358ec1"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.8/finetype-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "36221360961becdfad1aa28fbf1e299f6bea7b3162b0e8195657ff2f2d322984"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
