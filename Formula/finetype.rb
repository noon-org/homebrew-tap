class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.6.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.9/finetype-v0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "3c9d5a3049b2681aef8fad3cf50fee296d196f3fd567e038e64493c3d22e3e9c"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.9/finetype-v0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "020e824ced6c476694ff34b5693321a9e65beb581a23bbdea7866daff4f08d4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.6.9/finetype-v0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aed3e15ca4f5a28c2d57a70d80b717840f6fdbb28ac0a4efc12215bc40245f88"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.6.9/finetype-v0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cb1481679ff91eb0680eeb942942cd412133f12f9f24d5fcd5f2389e00fa415"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
