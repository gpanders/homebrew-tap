class Ijq < Formula
  desc "Interactive jq"
  homepage "https://git.sr.ht/~gpanders/ijq"
  url "https://git.sr.ht/~gpanders/ijq/archive/v0.1.0.tar.gz"
  sha256 "6e01bcea5674269c8673bedcfdf14adde77e82f313fe6112f991306bd233c47b"
  head "https://git.sr.ht/~gpanders/ijq", :using => :git

  depends_on "go" => :build
  depends_on "jq"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/ijq", "-h"
  end
end
