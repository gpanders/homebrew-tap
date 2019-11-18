class Ual < Formula
  desc "Create and manage your own man pages"
  homepage "https://github.com/gpanders/ual"
  url "https://github.com/gpanders/ual/archive/v0.1.2.tar.gz"
  sha256 "7628a4edd807b432f9c21cf3e3e57c61d3b99323a1ad37ed84ed5d13ed58d2d5"
  head "https://github.com/gpanders/ual.git"

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
