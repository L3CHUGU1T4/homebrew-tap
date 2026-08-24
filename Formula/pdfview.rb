class Pdfview < Formula
  desc "Terminal PDF viewer with inline image rendering for iTerm2"
  homepage "https://github.com/L3CHUGU1T4/TerminalPDFViewer"
  url "https://github.com/L3CHUGU1T4/TerminalPDFViewer/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ea0743606fbbb76d091b1299158040bde861b3fabee51daf76418ad93c867e38"
  license "MIT"

  depends_on "poppler"
  depends_on "libpng"
  depends_on "pkg-config" => :build

  def install
    system "make", "CXX=#{ENV.cxx}",
           "CXXFLAGS=-std=c++17 -O2 #{`pkg-config --cflags poppler-cpp libpng`.chomp}",
           "LDFLAGS=#{`pkg-config --libs poppler-cpp libpng`.chomp}"
    bin.install "pdfview"
  end

  test do
    assert_match "usage", shell_output("#{bin}/pdfview --help 2>&1", 1)
  end
end
