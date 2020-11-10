class Ijq < Formula
  desc "Interactive jq"
  homepage "https://git.sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.2.1.tar.gz"
  sha256 "33c1d0477fae17d4fbd6b8fa246622be9e0cd7129e39f3e939ef7e1830917a31"
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
