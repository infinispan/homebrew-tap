# Generated with JReleaser 1.24.0 at 2026-06-08T12:26:05.787051208Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.2.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.1/infinispan-cli-16.2.1-linux-aarch_64.zip"
    sha256 "08496d1990191d82b37df01e0ddf5b4057d16a07e8d8cca73bce5ed89885f2d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.1/infinispan-cli-16.2.1-linux-x86_64.zip"
    sha256 "1afe341e7fd0eaa2b84542ed4127d28c5f59542c5e5dba80393c53260a3cf090"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.1/infinispan-cli-16.2.1-osx-aarch_64.zip"
    sha256 "768a335cc5a71f4bf30ae125330bf8e2feb1d8570afcc4bbb5dd2e7d416951c3"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/infinispan-cli" => "infinispan-cli"
  end

  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.2.1", output
  end
end
