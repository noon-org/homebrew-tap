class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.2/finetype-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "f6dc09ec073dc0be1191da43da978d462e186d84a06d5209c092675c08aeacb6"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.2/finetype-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "1877e8e05795be51ff16898b3aa93ca5ddb4e828dc72c992556d9f8063df11f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.2/finetype-v0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71a8532d193f74f34bcd0d8f654cbd40e2493e18c5b703be2be000bd5636186d"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.2/finetype-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d548b26a9498561760fed828976153e3ad751ca3737e6fc79ad66aaa6110d9c"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
