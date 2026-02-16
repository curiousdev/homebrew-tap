class AzLoadenvCli < Formula
  desc "Export Azure Web App settings to a .env file with automatic Key Vault secret resolution"
  homepage "https://curiousdev.github.io/az-loadenv/"
  license "MIT"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.2/az-loadenv-darwin-arm64.tar.gz"
      sha256 "087215cc03f23150b8ce593d59d4c752b4807138d69499a8b79d2e2379774552"
    else
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.2/az-loadenv-darwin-amd64.tar.gz"
      sha256 "2413f8616680487ea422168e6f79d2731d5bd024cd7805f68f21605efbed8071"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.2/az-loadenv-linux-arm64.tar.gz"
      sha256 "c4f798cceffb90512e938dc9ed1cbbd1498114f000cf673af796b7bc59102134"
    else
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.2/az-loadenv-linux-amd64.tar.gz"
      sha256 "a554f1e96c2078acfbeed0d3953d60ef57a7d657627c13096fa65964b7820a0f"
    end
  end

  def install
    bin.install "az-loadenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/az-loadenv --version")
  end
end
