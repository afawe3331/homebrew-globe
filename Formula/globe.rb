class Globe < Formula
  desc "Interactive ASCII globe generator"
  homepage "https://github.com/adamsky/globe"
  url "https://github.com/adamsky/globe/archive/refs/heads/master.zip"
  version "0.2.1"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage", shell_output("#{bin}/globe -h")
  end
end
