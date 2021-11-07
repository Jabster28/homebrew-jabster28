class Decoreco < Formula
  desc "Decode and re-encode big media files to save space"
  homepage "https://github.com/Jabster28/decoreco"
  url "https://github.com/Jabster28/decoreco/archive/refs/tags/v0.1.0-a.1.tar.gz"
  sha256 "39516639dc3b74df17a85488353462b44ae327e52808aa46eac3dad889b55ab4"
  license "CC0-1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
