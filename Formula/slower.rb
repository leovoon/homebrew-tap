class Slower < Formula
  desc "Periodic walk reminder"
  homepage "https://github.com/leovoon/slower"
  url "https://github.com/leovoon/slower/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fb0aaac177c643fa923810b282571e3a19318401ff18eb0f6bb00fc11701bfee"
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
