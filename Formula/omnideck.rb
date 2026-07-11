class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.8.0/omnideck-darwin-amd64.tar.gz"
      sha256 "63584d3dd639c5eeacb3cf7e997b9e9950c33d8ff76ae801de56d89c3743eb8c"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.8.0/omnideck-darwin-arm64.tar.gz"
      sha256 "2e8e4ed9d7b0557039f0d095ce831391be85e59c07d0e25ed74252b2bc7ce344"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.8.0/omnideck-linux-amd64.tar.gz"
      sha256 "dac75853713d0a17b7677cca1f2edb11268242ede63b19953b834b66cdca5f5c"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.8.0/omnideck-linux-arm64.tar.gz"
      sha256 "2183e95da654c9f98c799a55a39dc01d673389900d0976a35c8a203f4208e09b"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
