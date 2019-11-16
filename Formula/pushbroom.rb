class Pushbroom < Formula
  desc "Keep your filesystem free of clutter"
  homepage "https://github.com/gpanders/pushbroom"
  url "https://github.com/gpanders/pushbroom/archive/v0.2.1.tar.gz"
  sha256 "1cdf46c371cf0851127a648d93db44b02e5a8a497c05d35fc52ec0364c1cb87a"
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
