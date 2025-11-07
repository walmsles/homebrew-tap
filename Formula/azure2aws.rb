class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "bb7384080c73105d3f4d5827ba3ba9e03cc7594f47f9744aa16ac5e6fe480ba4"
  version "1.0.1"
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
