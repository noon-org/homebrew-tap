class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.7/finetype-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "ddd4671b5848159b4f4da301a3684a62144ff34692cb7e7359b60be5ff60bc76"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.7/finetype-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "3397aa52ae6d9a0c55b2e3c21474e5b0ece60b56173f6348ba4b4b6e54dfa0f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.7/finetype-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20bc559e2acca6c7d535fd88ecee4c40103b66bc652a8282cc17932c5df14c6e"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.7/finetype-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a40798f5b2730d066fe278fc2dc4e46dc712096e3323bfc51be27d3e41e4a21"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
