# Generated with JReleaser 1.26.0 at 2026-10-20T21:34:37.010893537Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  version "16.3.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.1/infinispan-cli-16.3.1-linux-aarch_64.zip", :using => :nounzip
    sha256 "cb6a92c794a2ee10f2926ae1a8260bd4a6f29741040dbb2563a47097ad16567d"

    def install
      bin.install "infinispan-cli-16.3.1-linux-aarch_64" => "infinispan-cli"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.1/infinispan-cli-16.3.1-linux-x86_64.zip", :using => :nounzip
    sha256 "f6313dd97180e3dae706b20300bf041d96279fb41a408f3c6ff26f28c6e0b72e"

    def install
      bin.install "infinispan-cli-16.3.1-linux-x86_64" => "infinispan-cli"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.1/infinispan-cli-16.3.1-osx-aarch_64.zip", :using => :nounzip
    sha256 "915c0c5fd72d6c475c11baa76b3ffa529528210b93a0d45a92c93d3b9b4c0d46"

    def install
      bin.install "infinispan-cli-16.3.1-osx-aarch_64" => "infinispan-cli"
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
    assert_match "16.3.1", output
  end
end
