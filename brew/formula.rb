# Generated with JReleaser 1.26.0 at 2026-09-03T21:44:29.150084733Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  url "https://github.com/infinispan/infinispan/releases/download/16.2.3/infinispan-cli-16.2.3-linux-aarch_64.zip", :using => :nounzip
  version "16.2.3"
  sha256 "67a7fdbf4c1f840e0b32cdca61a4c62624564107b4e678f44a0e3cc090c16caa"
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
    assert_match "16.2.3", output
  end
end
