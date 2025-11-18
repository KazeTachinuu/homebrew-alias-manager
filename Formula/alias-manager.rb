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
      To enable alias manager, add this to your ~/.bashrc or ~/.zshrc:
        eval "$(am init)"

      For fish shell, add this to ~/.config/fish/config.fish:
        am init fish | source
    EOS
  end

  test do
    system "#{bin}/am", "version"
  end
end
