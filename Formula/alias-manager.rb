class AliasManager < Formula
    desc "Lightweight CLI tool to manage your shell aliases efficiently"
    homepage "https://github.com/kazetachinuu/alias_manager"
    url "https://github.com/kazetachinuu/alias_manager/archive/v2.2.0.tar.gz"
    sha256 "5cbc443adb31552d6d1b73c857c6d62be390aa9ee8b16d4c49aa4893f03fd374"
    license "MIT"

    def install
      system "make"
      bin.install "am"
      man1.install "am.1"
    end

    def caveats
      <<~EOS
        To enable alias-manager, run:
          am init

        This will automatically configure your shell.
      EOS
    end

    test do
      system "#{bin}/am", "version"
    end
  end
