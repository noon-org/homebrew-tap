class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.2/finetype-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "09a8795c6474fa727d3508c0c05b60cd1fd2532443166029817860b999858b6e"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.2/finetype-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "b6e37eb2a5cba2f9e2502ca22e4d3ed4f66644a90874e398827a2302761a2888"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.2/finetype-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abaa9974ac805e8f064bca2b7e806874aad82c02b5fe0a7cf08baa7147b3c01e"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.2/finetype-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18ae80d8534d0b5b5b9237133f3290fec37800415cc7614ce0c86f20552edba3"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
