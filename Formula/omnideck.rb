class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.10.0/omnideck-darwin-amd64.tar.gz"
      sha256 "60f0d9ff1101547e462987e5807d7d00b85e1d51007eafebe0d3e105c9a4d50d"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.10.0/omnideck-darwin-arm64.tar.gz"
      sha256 "6853adb6e7863c1514a426a5a4c5d90d8bdb68e6a969161be32374ffd0e8f5f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.10.0/omnideck-linux-amd64.tar.gz"
      sha256 "cb3313031d4320c741349de673be2eb2e989867d81914240ec690df79c0aca95"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.10.0/omnideck-linux-arm64.tar.gz"
      sha256 "bc2b75509a2f9277c62d67ac03999cbc0789a349502bf72da0e9959de96b7655"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
