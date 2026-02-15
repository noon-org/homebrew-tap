class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "6070b9d616ac8473c079b600ea26a666fce75f7c036d236406ecb628fec5443a"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "5cb51812982306535789d33f20874d801cdc7a6210d3d30f7f921be8ddb96110"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5bc1b2435412c2908d935437f3207643d3da4559bef53edd76b7e1e7f998608"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "392442112d918587c0e47d63a0d7722158c5ff1f8539c7c0ce3fc7517d19bfeb"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
