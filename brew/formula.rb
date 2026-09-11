# Generated with JReleaser 1.26.0 at 2026-09-11T14:05:56.377642277Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  url "https://github.com/infinispan/infinispan/releases/download/16.0.15/infinispan-cli-16.0.15-linux-aarch_64.zip", :using => :nounzip
  version "16.0.15"
  sha256 "1e55399ff6f8e34b9ee0e0f66b060d09484a8445fd8c78ea0df25aacc007cce4"
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
    assert_match "16.0.15", output
  end
end
