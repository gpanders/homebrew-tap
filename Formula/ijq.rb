class Ijq < Formula
  desc "Interactive jq"
  homepage "https://git.sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.2.0.tar.gz"
  sha256 "704f2abef71cd7919f74b07ac100206c128dcd6ab229473d96970f899f9b2d6a"
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
