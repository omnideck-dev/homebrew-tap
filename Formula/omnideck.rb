class Omnideck < Formula
  desc "CLI tool for managing the Omnideck local agent harness"
  homepage "https://github.com/omnideck-dev/cli"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.6.0/omnideck-darwin-amd64.tar.gz"
      sha256 "29a80397b0344ca2be0b79c62ed3afed6719ad5118e2f228ebe715e9ba6f1132"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.6.0/omnideck-darwin-arm64.tar.gz"
      sha256 "2d8e899ddb397c7e851d3653f9bba2e23de8a248f3e09030e87eab720875dee7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.6.0/omnideck-linux-amd64.tar.gz"
      sha256 "f6f76e0cfc9d44fd2bf0713b641c3208835cf3126c4d406cabdd7f60e942b7d5"
    end

    on_arm do
      url "https://github.com/omnideck-dev/cli/releases/download/v0.6.0/omnideck-linux-arm64.tar.gz"
      sha256 "a5822760211013ffe71f3d317639c8399b0aed3a6e703a2b2f62dd714c34fb90"
    end
  end

  def install
    bin.install "omnideck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omnideck --version")
  end
end
