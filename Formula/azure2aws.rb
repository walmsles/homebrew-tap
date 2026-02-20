class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "0a6acbbd5d0798c8b4a925f486078a24c4a130d7d714b6916c64643b38cb5ebb"
  version "1.1.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "azure2aws"
  end

  test do
    system "#{bin}/azure2aws", "--version"
  end
end
