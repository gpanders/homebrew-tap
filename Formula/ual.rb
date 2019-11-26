class Ual < Formula
  desc "Create and manage your own man pages"
  homepage "https://github.com/gpanders/ual"
  url "https://github.com/gpanders/ual/archive/v0.2.0.tar.gz"
  sha256 "de42c369e48c59db562ad1b596e81fec2e7661ac809945964e20b1f791372db8"
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
