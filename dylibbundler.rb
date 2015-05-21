require 'formula'

class Dylibbundler < Formula
  homepage 'https://github.com/auriamg/macdylibbundler'
  head 'https://github.com/auriamg/macdylibbundler.git'

  def install
    system "make"
    bin.install "dylibbundler"
  end

  test do
    system "#{bin}/dylibbundler", "-h"
  end

  def caveats; <<-EOS.undent
    Usage example:
      dylibbundler -od -b -x ./HelloWorld.app/Contents/MacOS/helloworld  -d ./HelloWorld.app/Contents/libs/
    EOS
  end
end
