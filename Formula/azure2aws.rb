class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f0cfd65cd388cec88da1081554a0c02f73fdc59153572a33eddba6fbfb52d06a"
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
