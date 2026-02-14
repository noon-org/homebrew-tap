class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.2/finetype-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ba543e8995ab13791f3a6a288d47cdda97e7deaf0c22c5cc299d2c7faa0da625"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.2/finetype-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "2f9812fe74315c84eaf0f647a04b10a33c983c6ba3d05faf0f579956ed6fe351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.2/finetype-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9a2b5f82db62b3343de67eac19823f0022dcad771894af655b25fdd29d0017a"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.2/finetype-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f272c21c6d6e04e2adba9ad0d70c16f24168639593f7ef65713f9317dd208ad"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
