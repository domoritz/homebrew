require 'formula'

class Gringo < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/potassco/gringo/3.0.4/gringo-3.0.4-source.tar.gz'
  sha1 'a9057c602126f39fdf691336147987f2cef864e0'

  depends_on 'cmake' => :build
  depends_on 're2c'
  depends_on 'boost'

  def install
    mkdir 'build'
    cd 'build' do
      system "cmake", "..", *std_cmake_args
      system "make install"
    end
  end
end
