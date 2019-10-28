class Ual < Formula
  desc "Keep your filesystem free of clutter"
  homepage "https://github.com/gpanders/ual"
  url "https://github.com/gpanders/ual/archive/v0.1.0.tar.gz"
  sha256 "a596c8921f1010e4f0d3b7e354d4923f05f6e0282abe4523ec2fa5d43c5a9f1b"
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
