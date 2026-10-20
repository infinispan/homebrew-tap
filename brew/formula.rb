# Generated with JReleaser 1.26.0 at 2026-10-20T21:34:37.010893537Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  url "https://github.com/infinispan/infinispan/releases/download/16.3.1/infinispan-cli-16.3.1-linux-aarch_64.zip", :using => :nounzip
  version "16.3.1"
  sha256 "cb6a92c794a2ee10f2926ae1a8260bd4a6f29741040dbb2563a47097ad16567d"
  license "Apache-2.0"


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
