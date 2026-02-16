class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "e66139724608fbb9ba927c2793f02e97641487ce74ada61cd00ef87bf83c83f4"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "62e51111c5f8093c7410756cfa9431e724bb654ee1309a2525514ec9a6c82380"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de24ed8aa6fb5b5a8d390f26c51e3665d1da49aa70b538ed8faf27c2b1f26277"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.5/finetype-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19788d1eb0a6bbb2f66d66429d80a8380921f940e1b096491dfa3e6c1284d926"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
