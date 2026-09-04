class Vex < Formula
  desc "Terminal text editor with syntax highlighting for 17 languages"
  homepage "https://github.com/L3CHUGU1T4/vex"
  url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "811cc0ba3645a072ed4b1c31e5e33af162169e738f36d08c5a61a67f92015141"
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
