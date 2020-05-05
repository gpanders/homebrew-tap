class Ual < Formula
  desc "Create and manage your own man pages"
  homepage "https://git.sr.ht/~gpanders/ual"
  head "https://git.sr.ht/~gpanders/ual", :using => :git

  depends_on "pandoc"

  def install
    bin.install "ual"
    bash_completion.install "completions/bash/ual"
    fish_completion.install "completions/fish/ual.fish"
    zsh_completion.install "completions/zsh/_ual"
  end

  test do
    system "#{bin}/ual", "ls"
  end
end
