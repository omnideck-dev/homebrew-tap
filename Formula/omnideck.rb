class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.7.0/omnideck-darwin-amd64.tar.gz"
      sha256 "da30e57aa565b1677d8d749fcc0cb82c3f9cac8ea27239d9ea1ba30968898c96"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.7.0/omnideck-darwin-arm64.tar.gz"
      sha256 "f9da5f67d1b7cda51b311f5beb019ab3a2491a8ca52caf43d1dd7668fa58a1f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.7.0/omnideck-linux-amd64.tar.gz"
      sha256 "24d83b22ef880d18ca4d019bd75408018205d1642378a1adc0b0667e34507df0"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.7.0/omnideck-linux-arm64.tar.gz"
      sha256 "9a7c70df117cf4e7aec6a1c123d808bd4fd3792fc751c8cb342b5e8dd7df72e0"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
