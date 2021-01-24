class Ijq < Formula
  desc "Interactive jq"
  homepage "https://sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.2.3.tar.gz"
  sha256 "1802a7b319349d86927908854e1cb27ec465e1abf502914c45658c61a9793dda"
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
