require 'formula'

class Geeqie <Formula
  url 'http://downloads.sourceforge.net/project/geeqie/geeqie/geeqie-1.0/geeqie-1.0.tar.gz'
  homepage 'http://geeqie.sourceforge.net/'
  md5 '1d67ef990390224c5052697d93bb49c0'


  depends_on 'gtk+'
  depends_on 'intltool'
  depends_on 'gettext'
  depends_on 'pkg-config'
  depends_on 'exiv2' => :recommended
  depends_on 'little-cms' => :recommended
  depends_on 'imagemagick' => :recommended

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
