class AliasManager < Formula
    desc "Lightweight CLI tool to manage your shell aliases efficiently"
    homepage "https://github.com/kazetachinuu/alias_manager"
    url "https://github.com/kazetachinuu/alias_manager/archive/v2.3.0.tar.gz"
    sha256 "ff24e4f2fe14655c12b25b636eefcf757f4cccaf5080afc8af444402e55effc2"
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
