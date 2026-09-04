class Vex < Formula
  desc "Terminal text editor with syntax highlighting for 17 languages"
    homepage "https://github.com/L3CHUGU1T4/vex"
      url "https://github.com/L3CHUGU1T4/vex/archive/refs/tags/v1.0.3.tar.gz"
        sha256 "8b12be1f20d9845bfc29544a9454b6e9d4e754884705c236955fc254eb8980fb"
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