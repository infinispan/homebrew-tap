# Generated with JReleaser 1.25.0 at 2026-07-31T17:34:32.917457765Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.2.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.2/infinispan-cli-16.2.2-linux-aarch_64.zip", :using => :nounzip
    sha256 "39afb1ceaa23cc678314afbb6b26b20941561c47cf60d9d0c8ed86410a99c981"

    def install
      bin.install "infinispan-cli-16.2.2-linux-aarch_64" => "infinispan-cli"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.2/infinispan-cli-16.2.2-linux-x86_64.zip", :using => :nounzip
    sha256 "099ea88ee760009c000211978e159ec326d64f58bc422ee44d66185257a2807c"

    def install
      bin.install "infinispan-cli-16.2.2-linux-x86_64" => "infinispan-cli"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.2/infinispan-cli-16.2.2-osx-aarch_64.zip", :using => :nounzip
    sha256 "1b2725f0c906c26b1d61b1a0a1d3c08bbbb35da1551627b82467b52d61a6715f"

    def install
      bin.install "infinispan-cli-16.2.2-osx-aarch_64" => "infinispan-cli"
    end
  end


  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.2.2", output
  end
end
