# Generated with JReleaser 1.27.0 at 2026-11-18T20:42:22.063614618Z

class InfinispanCli < Formula
  desc "Command-line interface for Infinispan data grid"
  homepage "https://infinispan.org"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.2/infinispan-cli-16.3.2-linux-aarch_64.zip"
    sha256 "086500803b33e57e83fb98865a5b52c7d7d1aa1fb2bd088a435a7882afb5f5c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.2/infinispan-cli-16.3.2-linux-x86_64.zip"
    sha256 "12f8be8d8ae9456a36586feb1d8ed397232ea0cda91addb2170113405c759aa3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/infinispan/infinispan/releases/download/16.3.2/infinispan-cli-16.3.2-osx-aarch_64.zip"
    sha256 "4639569d41866089c1b7f8b508193c285051f295b09259618b128014377b7d8e"
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
    assert_match "16.3.2", output
  end
end
