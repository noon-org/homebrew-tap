class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "0c605197622825f5c4af512c11191426dd055fb7c9f6f624b005ef3dee5382ce"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "1147c973fbd9617a724668bd29c7e843d2c78a8b5eac2d90934f4c91b809a0ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7685cf5afff172362f775a60ed0df6aac045746b3e6b950ecd35bc36b779f586"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.4/finetype-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a73904f13d85c53acb544fdf98cfca7780afde818f8699ff34a75838f1ae4a72"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
