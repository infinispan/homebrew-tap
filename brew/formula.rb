# Generated with JReleaser 1.25.0 at 2026-07-31T17:34:32.917457765Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  url "https://github.com/infinispan/infinispan/releases/download/16.2.2/infinispan-cli-16.2.2-linux-aarch_64.zip", :using => :nounzip
  version "16.2.2"
  sha256 "39afb1ceaa23cc678314afbb6b26b20941561c47cf60d9d0c8ed86410a99c981"
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
    assert_match "16.2.2", output
  end
end
