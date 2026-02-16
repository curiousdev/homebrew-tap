class AzLoadenvCli < Formula
  desc "Export Azure Web App settings to a .env file with automatic Key Vault secret resolution"
  homepage "https://curiousdev.github.io/az-loadenv/"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.1/az-loadenv-darwin-arm64.tar.gz"
      sha256 "13a373098831aa423deb63f1fa102527f7ed991e3b70e8f17f3ee6b955a1327c"
    else
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.1/az-loadenv-darwin-amd64.tar.gz"
      sha256 "f78653b1c518c40c1d2fe8e0ec50f7a572fe656e39dfa6ac48bd0ca1d49959dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.1/az-loadenv-linux-arm64.tar.gz"
      sha256 "307f179e4f348beec0e0872f20a967eb55ace3a3e124ab3a8d8b57bb36e8f57b"
    else
      url "https://github.com/curiousdev/az-loadenv/releases/download/v1.0.1/az-loadenv-linux-amd64.tar.gz"
      sha256 "cc8fdeb53b0bc0906d7f1a4f250d91ea6be27eeb4b9f37318c91f86648c633f0"
    end
  end

  def install
    bin.install "az-loadenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/az-loadenv --version")
  end
end
