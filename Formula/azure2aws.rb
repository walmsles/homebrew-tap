class Azure2aws < Formula
  desc "Azure to AWS credential conversion utility"
  homepage "https://github.com/walmsles/azure2aws"
  url "https://github.com/walmsles/azure2aws/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7005a2b1b014a9d45e84dfccc8344b1001e0fc8c547b6545549ef8d30632ec7b"
  version "1.0.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/azure2aws", "--help"
  end
end
