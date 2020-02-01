class Pushbroom < Formula
  desc "Keep your filesystem free of clutter"
  homepage "https://github.com/gpanders/pushbroom"
  url "https://github.com/gpanders/pushbroom/archive/v0.3.2.tar.gz"
  sha256 "dda2718104ac0109737b76b4f1d450879fefc068fece35852756d298e91e7322"
  head "https://github.com/gpanders/pushbroom.git"

  depends_on "python"

  def install
    etc.install "pushbroom.conf"
    libexec.install "bin/pushbroom" => "pushbroom.py"
    libexec.install "src/pushbroom"
    bin.install_symlink libexec/"pushbroom.py" => "pushbroom"
  end

  def caveats; <<~EOS
    To get started, copy the configuration file to ~/.config/pushbroom/config:

        mkdir -p ~/.config/pushbroom
        cp #{etc}/pushbroom.conf ~/.config/pushbroom/config
  EOS
  end

  plist_options :manual => "pushbroom"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>EnvironmentVariables</key>
        <dict>
          <key>PATH</key>
          <string>/usr/bin:/bin:/usr/sbin:/sbin:#{HOMEBREW_PREFIX}/bin</string>
        </dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>Program</key>
        <string>#{opt_bin}/pushbroom</string>
        <key>StartInterval</key>
        <integer>3600</integer>
        <key>RunAtLoad</key>
        <true />
        <key>StandardErrorPath</key>
        <string>/dev/null</string>
        <key>StandardOutPath</key>
        <string>/dev/null</string>
      </dict>
    </plist>
  EOS
  end

  test do
    system "#{bin}/pushbroom", "--version"
  end
end
