class Decoreco < Formula
  desc "Decode and re-encode big media files to save space"
  homepage "https://github.com/Jabster28/decoreco"
  url "https://github.com/Jabster28/decoreco/archive/refs/tags/v0.1.0-a.1.tar.gz"
  sha256 "39516639dc3b74df17a85488353462b44ae327e52808aa46eac3dad889b55ab4"
  license "CC0-1.0"

  bottle do
    root_url "https://github.com/Jabster28/homebrew-jabster28/releases/download/decoreco-1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "3539f9c2c7c8efbebbcb2252e0d98ddcb9b72df0af9d2cc0820901d85aef701d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "852d8317e988abbb395d09e3c573fe2d0624f3f3acaa74d46ee2f762805a742d"
  end

  depends_on "rust" => :build
  depends_on "ffmpeg"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
