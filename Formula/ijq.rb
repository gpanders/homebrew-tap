class Ijq < Formula
  desc "Interactive jq"
  homepage "https://git.sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.1.1.tar.gz"
  sha256 "cdbf179e2c1b5ddd997bb8c3f5a13fbc011a4dd9cd978adabac72aa907cf47f2"
  head "https://git.sr.ht/~gpanders/ijq", :using => :git

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    system "#{bin}/ijq", "-h"
  end
end
