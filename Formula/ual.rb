class Ual < Formula
  desc "Create and manage your own man pages"
  homepage "https://github.com/gpanders/ual"
  url "https://github.com/gpanders/ual/archive/v0.2.2.tar.gz"
  sha256 "0a7255abf76b61dfb31896cd1cead11b8537b52e6121a125658c4c6bee903756"
  head "https://github.com/gpanders/ual.git"

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
