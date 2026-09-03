# Generated with JReleaser 1.26.0 at 2026-09-03T21:44:29.150084733Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.2.3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.3/infinispan-cli-16.2.3-linux-aarch_64.zip", :using => :nounzip
    sha256 "67a7fdbf4c1f840e0b32cdca61a4c62624564107b4e678f44a0e3cc090c16caa"

    def install
      bin.install "infinispan-cli-16.2.3-linux-aarch_64" => "infinispan-cli"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.3/infinispan-cli-16.2.3-linux-x86_64.zip", :using => :nounzip
    sha256 "eacb8487cb7545f37bd3fdc946219939bf4c878da3f977a3b3d1cce0e0cdb66f"

    def install
      bin.install "infinispan-cli-16.2.3-linux-x86_64" => "infinispan-cli"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.2.3/infinispan-cli-16.2.3-osx-aarch_64.zip", :using => :nounzip
    sha256 "383f5fffcd795c423f7513b760eb60a35cf29fb3d880577f2e8bd69d563544f7"

    def install
      bin.install "infinispan-cli-16.2.3-osx-aarch_64" => "infinispan-cli"
    end
  end


  def install
    bin.install "infinispan-cli"
    bash_completion.install "completions/infinispan-cli_complete.bash" => "infinispan-cli"
    bash_completion.install "completions/infinispan-cli_dynamic_complete.bash" => "infinispan-cli-dynamic"
    zsh_completion.install "completions/infinispan-cli_complete.zsh" => "_infinispan-cli"
    zsh_completion.install "completions/infinispan-cli_dynamic_complete.zsh" => "_infinispan-cli-dynamic"
    fish_completion.install "completions/infinispan-cli.fish"
    fish_completion.install "completions/infinispan-cli_dynamic.fish" => "infinispan-cli-dynamic.fish"
  end

  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.2.3", output
  end
end
