class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.9.0/omnideck-darwin-amd64.tar.gz"
      sha256 "cce472d3c9c797494a8225d6e8394af9d58859804b26e38e1fec3d82820d13b3"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.9.0/omnideck-darwin-arm64.tar.gz"
      sha256 "81cb81e23bca3368069b7d44b1027349a325d744e5699d11df68f094b2c2f8a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.9.0/omnideck-linux-amd64.tar.gz"
      sha256 "d9a697ececfc645c878b6ea96ec1afd686d85ef9a277d23fc8e09909bba43e88"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.9.0/omnideck-linux-arm64.tar.gz"
      sha256 "26f45fcc1b3b252e7795d170f085a32e93e699a9ea249c0ab20809ec050ee35e"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
