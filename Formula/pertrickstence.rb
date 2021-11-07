class Pertrickstence < Formula
  desc "Fake persistence for debian packages"
  homepage "https://github.com/Jabster28/pertrickstence"
  url "https://github.com/Jabster28/pertrickstence/archive/refs/tags/v0.1.0-a.1.tar.gz"
  sha256 "f7c1dac2b5bddede81dc7ca3ced9ae7e0a61479f0779d02c7126cf616612277d"
  license "CC0-1.0"

  # requires nightly rust

  depends_on "rustup-init" => :build

  def install
    # install nightly rust
    system Formula["rustup-init"].bin/"rustup-init", "-qy", "--no-modify-path",
           "--default-toolchain", "nightly", "--profile", "minimal"
    with_env(PATH: "#{HOMEBREW_CACHE}/cargo_cache/bin:#{ENV["PATH"]}") do
      system "cargo", "+nightly", "install", "--locked", "--root", prefix, "--path", "."
    end
  end
end
