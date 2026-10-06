# Generated with JReleaser 1.26.0 at 2026-10-06T16:16:24.930410489Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  url "https://github.com/infinispan/infinispan/releases/download/16.3.0/infinispan-cli-16.3.0-linux-aarch_64.zip", :using => :nounzip
  version "16.3.0"
  sha256 "962f8a20e7c1845787a2f389c102e525b26e728f55e7199527837d2278671755"
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
    assert_match "16.3.0", output
  end
end
