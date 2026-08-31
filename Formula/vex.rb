class Vex < Formula
  desc "Terminal text editor with syntax highlighting for 17 languages"
    homepage "https://github.com/L3CHUGU1T4/vex"
      url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.2.tar.gz"
        sha256 "24198751f5a849fdf42df087e2bf07608e2a5ca7bcbb3c61c159d273c2d3be4c"
          license "MIT"
          
            depends_on "make"
            
              def install
                  rm_rf "build"
                      system "make", "CXX=#{ENV.cxx}"
                          bin.install "build/vex"
                            end
                            
                              test do
                                  assert_match "vex", shell_output("#{bin}/vex --help", 0)
                                    end
                                    end