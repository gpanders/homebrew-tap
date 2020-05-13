class Zet < Formula
  desc "Commandline tool to manage a Zettelkasten"
  homepage "https://git.sr.ht/~gpanders/zet"
  head "https://git.sr.ht/~gpanders/zet", :using => :git

  depends_on "zig" => :build

  def install
    system "make"
    bin.install "zig-cache/bin/zet"
    bash_completion.install "completions/bash/zet"
    fish_completion.install "completions/fish/zet.fish"
  end

  test do
    system "#{bin}/zet", "list"
  end
end
