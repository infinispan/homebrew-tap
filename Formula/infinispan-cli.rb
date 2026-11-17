# Generated with JReleaser 1.27.0 at 2026-11-17T16:24:51.739901992Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.16/infinispan-cli-16.0.16-linux-aarch_64.zip"
    sha256 "2113df22a1b17a462f42875da350b88991db9728e9d5e28533c7f203018355b4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.16/infinispan-cli-16.0.16-linux-x86_64.zip"
    sha256 "c2df47f5c12aee7a1235f8095b7718f373f0a852211f3cbb3f24f84c190aaa14"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.0.16/infinispan-cli-16.0.16-osx-aarch_64.zip"
    sha256 "447bc1496c0293d3f32241eadc0925185fa5f6fdca20e8b8baaf8a01f7dc6061"
  end

  def install
    # Each platform ZIP contains a single root directory
    # (infinispan-cli-<version>-<platform>/) wrapping the binary and completions.
    # In a multi-platform formula each platform's root directory has a different
    # name (the platform suffix differs), so it cannot be referenced by a single
    # JReleaser token — that would bake in only the first artifact's name and
    # break on every other platform. Resolve it at install time with a glob.
    root = Dir["infinispan-cli-*"].find { |d| File.directory?(d) } || "."
    cd root do
      bin.install "infinispan-cli"
      bash_completion.install "completions/infinispan-cli_complete.bash" => "infinispan-cli"
      bash_completion.install "completions/infinispan-cli_dynamic_complete.bash" => "infinispan-cli-dynamic"
      zsh_completion.install "completions/infinispan-cli_complete.zsh" => "_infinispan-cli"
      zsh_completion.install "completions/infinispan-cli_dynamic_complete.zsh" => "_infinispan-cli-dynamic"
      fish_completion.install "completions/infinispan-cli.fish"
      fish_completion.install "completions/infinispan-cli_dynamic.fish" => "infinispan-cli-dynamic.fish"
    end
  end

  test do
    output = shell_output("#{bin}/infinispan-cli --version")
    assert_match "16.0.16", output
  end
end
