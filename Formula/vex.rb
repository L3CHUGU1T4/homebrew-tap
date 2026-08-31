class Vex < Formula
  desc "Terminal text editor with syntax highlighting for 17 languages"
  homepage "https://github.com/L3CHUGU1T4/vex"
  url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "6b23b35cd3a951f4e004664872af41ee260b8396ff34cdad6ad8c1d16704d48f"
  license "MIT"
          
  depends_on "make"
            
  def install
    system "make", "CXX=#{ENV.cxx}"
    bin.install "build/vex"
  end
                        
  test do
    assert_match "vex", shell_output("#{bin}/vex --help", 0)
  end
end