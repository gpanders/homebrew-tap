class Ual < Formula
  desc "Create and manage your own man pages"
  homepage "https://github.com/gpanders/ual"
  url "https://github.com/gpanders/ual/archive/v0.1.1.tar.gz"
  sha256 "c75dca0719d97b2467200902cbb99645fc9353c5fadbefee8b0437f10ac238de"
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
