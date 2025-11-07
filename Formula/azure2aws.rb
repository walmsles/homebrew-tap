class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "89c44114417f66c510576faf3ddec5fb8b02986e9c28619082d5f89235b5dbdd"
  version "1.0.2"
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
