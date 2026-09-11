# Generated with JReleaser 1.26.0 at 2026-09-11T14:05:56.377642277Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.0.15"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.15/infinispan-cli-16.0.15-linux-aarch_64.zip", :using => :nounzip
    sha256 "1e55399ff6f8e34b9ee0e0f66b060d09484a8445fd8c78ea0df25aacc007cce4"

    def install
      bin.install "infinispan-cli-16.0.15-linux-aarch_64" => "infinispan-cli"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.15/infinispan-cli-16.0.15-linux-x86_64.zip", :using => :nounzip
    sha256 "07aa3c5c7ed32e84804adbf7d9229d80f5c5c77f7cccd6118d5155ad5118225c"

    def install
      bin.install "infinispan-cli-16.0.15-linux-x86_64" => "infinispan-cli"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.15/infinispan-cli-16.0.15-osx-aarch_64.zip", :using => :nounzip
    sha256 "70299989704b5e1166c0c0f71d9d8b9a26d5e3bc85c7c570c78f6bda03601013"

    def install
      bin.install "infinispan-cli-16.0.15-osx-aarch_64" => "infinispan-cli"
    end
  end


  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.0.15", output
  end
end
