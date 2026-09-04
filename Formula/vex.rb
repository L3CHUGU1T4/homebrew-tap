class Vex < Formula
  desc "Terminal text editor with syntax highlighting for 17 languages"
    homepage "https://github.com/L3CHUGU1T4/vex"
      url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.3.tar.gz"
        sha256 "02594c602e339cfe18c0c0857995e3a4f0dfaadc70da9eba2615d1c4bb2a8381"
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