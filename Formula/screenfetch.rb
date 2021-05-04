class Screenfetch < Formula
    desc "Generate ASCII art with terminal, shell, and OS info"
    homepage "https://github.com/KittyKatt/screenFetch"
    url "https://file.zxavier.com/screenFetch-3.9.1-21.03.23.tar.gz"
    sha256 "10b40c733aa539f726bfd0905067a20572dd58ffa0246b8ebf511d7f5160c16a"
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
  
