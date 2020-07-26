class Wk < Formula
  desc "Commandline tool to manage a personal wiki"
  homepage "https://git.sr.ht/~gpanders/wk"
  head "https://git.sr.ht/~gpanders/wk", :using => :git

  depends_on "zig" => :build

  def install
    system "make"
    bin.install "zig-cache/bin/wk"
    bash_completion.install "contrib/completions/bash/wk"
    fish_completion.install "contrib/completions/fish/wk.fish"
  end

  test do
    system "#{bin}/wk", "list"
  end
end
