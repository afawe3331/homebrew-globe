class Globe < Formula
  desc "ASCII globe for the terminal"
  homepage "https://github.com/adamsky/globe"
  url "https://github.com/adamsky/globe/archive/refs/heads/master.zip"
  version "latest"
  license "GPL-3.0-or-later"

  depends_on "make" => :build

  def install
    system "make"
    bin.install "globe"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/globe --help", 1)
  end
end
