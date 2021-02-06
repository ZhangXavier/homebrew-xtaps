class Screenfetch < Formula
    desc "Generate ASCII art with terminal, shell, and OS info"
    homepage "https://github.com/KittyKatt/screenFetch"
    url "https://file.zxavier.com/screenFetch-3.9.1-21.01.03.tar.gz"
    sha256 "a9137805b898fe6fc635fe6833f01b042d5d1caf22394d6b4993ec256fa0e3fb"
    license "GPL-3.0"
    head "https://github.com/KittyKatt/screenFetch.git", shallow: false
  
    bottle :unneeded
  
    def install
      bin.install "screenfetch-dev" => "screenfetch"
      man1.install "screenfetch.1"
    end
  
    test do
      system "#{bin}/screenfetch"
    end
  end
  