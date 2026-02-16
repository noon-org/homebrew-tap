class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "fd61f37fb70b104de7e5130c09d745dfd4344eab31144df4d3c4a5f8053441bb"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "99cb092df897e08c04062156936215ed29532dc08ae548e0c657a50367ac09c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "60cfee2ef517364e562c09fc09513cb93bc2e62823a07ff810d5e1305ffbcee6"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ecbc72cd6886e6471214691cf04c4164940d86f37750e1693b9b2633993b5db"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
