class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://noon.sh/projects/finetype/"
  license "MIT"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.9/finetype-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "6d73615f4799900cdbe031f30d0cfd4f9ad19a014c87b8ec1e7c2c83d2cef6e5"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.9/finetype-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "f9a05f1deb53da031818b15ed978fd167c3f448d8a1e26b6200ce85cb1720a42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/noon-org/finetype/releases/download/v0.1.9/finetype-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5bf966927464909d6b5345ca27b2f8e11333b533e9ddb2e10b69a924486a366"
    else
      url "https://github.com/noon-org/finetype/releases/download/v0.1.9/finetype-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4842d55087a59d3d5aa750c8f53a3f8c4f0eb1a5f2ff72b40422fc3c782b517"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
