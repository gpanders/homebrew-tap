class Zet < Formula
  desc "Commandline tool to manage a Zettelkasten"
  homepage "https://git.sr.ht/~gpanders/zet"
  head "https://git.sr.ht/~gpanders/zet", :using => :git

  depends_on "zig" => :build

  def install
    system "zig", "build", "--prefix", prefix, "-Drelease-small=true", "install"
  end

  test do
    system "#{bin}/zet", "list"
  end
end
