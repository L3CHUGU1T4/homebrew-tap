class Mdrender < Formula
    desc "Terminal Markdown renderer with syntax highlighting and built-in pager"
    homepage "https://github.com/L3CHUGU1T4/mdRender"
    url "https://github.com/L3CHUGU1T4/mdRender/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "b0a04168db6152815226e431d7b048de453ab630816f62f36c881bbf8141654a"
    license "MIT"

    def install
      system "make", "CXX=#{ENV.cxx}", "PREFIX=#{prefix}"
      bin.install "build/mdrender"
    end

    test do
      (testpath/"test.md").write("# Hello\n\nWorld\n")
      system "#{bin}/mdrender", "-p", "#{testpath}/test.md"
    end
  end
