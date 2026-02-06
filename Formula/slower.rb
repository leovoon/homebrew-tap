class Slower < Formula
  desc "Periodic walk reminder"
  homepage "https://github.com/leovoon/slower"
  url "https://github.com/leovoon/slower/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "958b9179a4a35c081634975bfc85e29e753dc644f832696aa8e3e5d59ae3233a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "slower.sh" => "slower"
    bin.install "launchd-setup.sh"
    pkgshare.install "com.leovoon.slower.plist.example"
    doc.install "README.md"
  end

  test do
    system bin/"slower", "--help"
  end
end
