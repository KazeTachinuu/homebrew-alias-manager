class AliasManager < Formula
  desc "Lightweight CLI tool to manage your shell aliases efficiently"
  homepage "https://github.com/kazetachinuu/alias_manager"
  url "https://github.com/kazetachinuu/alias_manager/archive/v2.1.3.tar.gz"
  sha256 "118a199775cc4cf2e637c88d975c8c83fd317fb34710ed6eab48a981104181a0"
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
