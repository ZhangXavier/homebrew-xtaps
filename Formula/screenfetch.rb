class Screenfetch < Formula
    desc "Generate ASCII art with terminal, shell, and OS info"
    homepage "https://github.com/KittyKatt/screenFetch"
    url "https://file.zxavier.com/screenFetch/screenFetch-3.9.1-21.05.24.tar.gz"
    sha256 "fc264300790e82344c24b73bb8acc51b16ab9c8e4bf6f815d3c023c3f7ed93bf"
    license "GPL-3.0"
    head "https://github.com/KittyKatt/screenFetch.git", shallow: false
  
    # `screenfetch` contains references to `/usr/local` that
    # are erronously relocated in non-default prefixes.
    # pour_bottle? only_if: :default_prefix
  
    def install
      bin.install "screenfetch-dev" => "screenfetch"
      man1.install "screenfetch.1"
    end
  
    test do
      system "#{bin}/screenfetch"
    end
  end
