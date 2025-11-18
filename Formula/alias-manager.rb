class AliasManager < Formula
  desc "Lightweight CLI tool to manage your shell aliases efficiently"
  homepage "https://github.com/kazetachinuu/alias_manager"
  url "https://github.com/kazetachinuu/alias_manager/archive/v2.1.2.tar.gz"
  sha256 "d999a939b6277beb6b4869fe536e450ace30cd5dee3336286685083583fb52ff"
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
