# Generated with JReleaser 1.26.0 at 2026-10-06T16:16:24.930410489Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.3.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.0/infinispan-cli-16.3.0-linux-aarch_64.zip", :using => :nounzip
    sha256 "962f8a20e7c1845787a2f389c102e525b26e728f55e7199527837d2278671755"

    def install
      bin.install "infinispan-cli-16.3.0-linux-aarch_64" => "infinispan-cli"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.0/infinispan-cli-16.3.0-linux-x86_64.zip", :using => :nounzip
    sha256 "3467cdc7470447dfc1ebe11197665d519ee7df766e8e57c786d755c82a02eecf"

    def install
      bin.install "infinispan-cli-16.3.0-linux-x86_64" => "infinispan-cli"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.0/infinispan-cli-16.3.0-osx-aarch_64.zip", :using => :nounzip
    sha256 "483467b2beedbb47a649001c833ef8c1d4141a05f8a8a1574745e0b645925621"

    def install
      bin.install "infinispan-cli-16.3.0-osx-aarch_64" => "infinispan-cli"
    end
  end


  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.3.0", output
  end
end
