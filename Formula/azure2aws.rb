class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "650a6bbf9ca1fd236ef9eb0a9991786f165bdbfb5a0617758efccb1a7c3f8351"
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
