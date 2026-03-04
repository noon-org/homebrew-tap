class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.3/finetype-v0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "11520e09e6739a40e99aa043b8620bfeb02500524012c7ba3af6ae6a750db5bf"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.3/finetype-v0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "a3ed9474b81a3fbe1d44c48e868a6884f3de70bc72da834d10ef40dc09debe1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.5.3/finetype-v0.5.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ace48cb42f3f5ff144d86287857e8499f70edaa0114a45597949b94a01dc13b5"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.5.3/finetype-v0.5.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60c3dc4383202d1b0dadf5ce8af7f9b94e6188ff36b325933f66aee24b582bf0"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
