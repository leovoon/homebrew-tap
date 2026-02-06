class Slower < Formula
  desc "Periodic walk reminder"
  homepage "https://github.com/leovoon/slower"
  url "https://github.com/leovoon/slower/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "8b515c48f6c044fc33fc4adfa347879c85bbb8e4accede37275f4284747ece6c"
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
