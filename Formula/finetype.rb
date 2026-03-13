class Finetype < Formula
  desc "Semantic type classifier for data profiling — detects data types from raw strings"
  homepage "https://meridian.online/projects/finetype/"
  license "MIT"
  version "0.6.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.11/finetype-v0.6.11-aarch64-apple-darwin.tar.gz"
      sha256 "e3d083cbdfdbad059238563b2b44cbc6989e62588ed1c738432bef5c66fba632"
    else
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.11/finetype-v0.6.11-x86_64-apple-darwin.tar.gz"
      sha256 "5c48a9ed62b664ba4418b00d6d7d99b1fc15aa284a4842e250ee3158ff1e973f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.11/finetype-v0.6.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a351a22dedba055bf47f127149170ab5d5f9bacc25f1b5f0557c1e36be68338"
    else
      url "https://github.com/meridian-online/finetype/releases/download/v0.6.11/finetype-v0.6.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65dc6a918e8f156e6d9dc4e463957e10002fb9c398dc90143cf6ce8b5460be0e"
    end
  end

  def install
    bin.install "finetype"
  end

  test do
    assert_match "finetype", shell_output("#{bin}/finetype --version")
  end
end
