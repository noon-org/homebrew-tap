class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.6/finetype-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "9bd7cabe6303516fd97e2fdba69aced493321cbb05d8444b4d9719c230ea05a8"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.6/finetype-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "f3d0ac68b09190f67609dc7b54b6bf0e1b317c48c9548f73a10159f4463bf5fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.6/finetype-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "025ad1f065abe800e34b46f22ae6abddc19f7c9bc97af8beca8d0cb452e9bde1"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.6/finetype-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5be8d268c7e71130fd01e8535fc242c323eed55dd2269b584ffef6292990890e"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
