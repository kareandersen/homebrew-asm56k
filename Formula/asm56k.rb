class Asm56k < Formula
  desc "Assembler for DSP56001 with partial DSP56301 support"
  homepage "https://bitbucket.org/sqward/asm56k"
  url "https://github.com/kareandersen/asm56k/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "84894d6ff84d93546fabe8ba604ee8857ce86a6229fc6947f921529394cc80dc"
  head "https://github.com/kareandersen/asm56k", branch: "main", using: :git

  bottle do
  end

  def install
    system "make", "CC=clang", "CFLAGS=--std=c89"
    bin.install "./build/asm56k"
  end

  test do
    assert_match "No input file given.", shell_output("#{bin}/asm56k 2>&1", 1)
  end
end
