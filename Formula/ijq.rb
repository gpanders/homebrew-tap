class Ijq < Formula
  desc "Interactive jq"
  homepage "https://git.sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.2.2.tar.gz"
  sha256 "e2a1898f04554880155a8421438169f56f8e99014ff98a81d732aca3e9a8ce7d"
  head "https://git.sr.ht/~gpanders/ijq", :using => :git

  depends_on "go" => :build
  depends_on "scdoc" => :build
  depends_on "jq"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/ijq", "-h"
  end
end
