class Centsible < Formula
  desc "Experience-driven cost and token optimization for AI coding agents"
  homepage "https://github.com/ntrieuvi97/centsible"
  url "https://github.com/ntrieuvi97/centsible/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "168a976d4f8280f12b4f175cc4e66ca5f4eeacae1817677b8417589c2ef725d7"
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/centsible" => "centsible"
  end

  test do
    assert_match "centsible", shell_output("#{bin}/centsible --version")
  end
end
