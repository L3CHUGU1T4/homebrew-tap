class Vex < Formula
    desc "Terminal text editor with syntax highlighting for 17 languages"
    homepage "https://github.com/L3CHUGU1T4/vex"
    url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "645207f4da177a982b44e66fcca241528240a9dea447bf6bf61ea7206f719574"
    license "MIT"

    def install
      system "make", "CXX=#{ENV.cxx}", "PREFIX=#{prefix}"
      bin.install "build/vex"
    end

    test do
      (testpath/"test.cpp").write("int main() { return 0; }\n")
      system "#{bin}/vex", "--help"
    end
  end
