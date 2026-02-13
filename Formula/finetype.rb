class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects 152 data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.1/finetype-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4342bd44aa934376b52cf5a1e210be257b420b967640bc9bea28beefa91fa802"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.1/finetype-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "cc78f287e7a3b7c5262a8032c7c6fd2dcd5f8d63ea680f7c8611e8f829e286b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.1/finetype-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bcc470ef9612757caff7db358b72fec02cdabfcd75ff88d9f4e5f3befd38a67"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.1/finetype-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa68ef06ae74f0d0e53e7ba4198fc9055467e0c046b4af9878a7198a954afb55"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
