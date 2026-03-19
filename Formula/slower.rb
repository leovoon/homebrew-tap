class Slower < Formula
  desc "Periodic walk reminder"
  homepage "https://github.com/leovoon/slower"
  url "https://github.com/leovoon/slower/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "b6262b1bc6b269e168e069813970b3084fb9838d43b8c08f29e8261f12d868b3"
  license "MIT"

  depends_on :macos
  depends_on "vlang" => :build

  def install
    system "v", "-prod", "-o", "slower", "./cmd/slower/main.v"
    bin.install "slower"
    doc.install "README.md"
  end

  test do
    system bin/"slower", "--help"
  end
end
