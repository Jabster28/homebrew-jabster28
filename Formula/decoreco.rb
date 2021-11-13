class Decoreco < Formula
  desc "Decode and re-encode big media files to save space"
  homepage "https://github.com/Jabster28/decoreco"
  url "https://github.com/Jabster28/decoreco/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c7d0401e687ede02d14a5682d280539377245c2644adf9721daef1c60bd234e0"
  license "CC0-1.0"

  bottle do
    root_url "https://github.com/Jabster28/homebrew-jabster28/releases/download/decoreco-0.2.0"
    sha256 cellar: :any_skip_relocation, catalina:     "56a56e616c8bfa4f284b57fdb13cc99f7d58448d6a9a4a52980547b579147bf5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9d93c8acb44742c484f6501ed86651320d18192d368cf6afb931bb0a9337a90f"
  end

  depends_on "rust" => :build
  depends_on "ffmpeg"

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end
end
