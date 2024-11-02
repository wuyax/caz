class Caz < Formula
  desc "Clean .DS_Store files and create ZIP archives"
  homepage "https://github.com/wuyax/caz"
  url "https://github.com/wuyax/caz/archive/v1.0.0.tar.gz"
  sha256 "YOUR_TARBALL_SHA256" # 需要在发布后更新
  license "MIT"

  def install
    bin.install "bin/caz"
  end

  test do
    system "#{bin}/caz", "-h"
  end
end