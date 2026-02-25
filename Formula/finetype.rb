class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.1/finetype-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c97de33485ac71acd40001807bfdfe51884e697a01f8fddfed744b4845390681"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.1/finetype-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "64e79b5a87d35941f97e73dcf9a456e7197f632e7d153828a2dfa0ed8c85dc06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.2.1/finetype-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23c1dad3b4730b581f717a5abdc917180d87def8f8f43fd41e6dc76146a387ba"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.2.1/finetype-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4edea99f8445a4e8fe81911b6beeb76680b632c3caf93f2820e1b8549133d5a"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
