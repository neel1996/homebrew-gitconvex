class Gitconvex < Formula
  desc "Gitconvex - A Web UI client for git"
  homepage "https://gitconvex.com"
  url "https://github.com/neel1996/gitconvex/archive/2.1.0-beta-1.tar.gz"
  sha256 "0d26bfd5913373ab4c2f7864925c891321e48eaea8c1a39d7f9c81a2a00ee76f"
  license "Apache-2.0 License"

  depends_on "go" => :build
  depends_on "libssh2"
  depends_on "libgit2"

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end