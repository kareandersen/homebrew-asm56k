class Asm56k < Formula
  desc "Assembler for DSP56001 with partial DSP56301 support"
  homepage "https://bitbucket.org/sqward/asm56k"
  url "https://github.com/kareandersen/asm56k/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "84894d6ff84d93546fabe8ba604ee8857ce86a6229fc6947f921529394cc80dc"
  head "https://github.com/kareandersen/asm56k", branch: "main", using: :git

  bottle do
    root_url "https://github.com/kareandersen/homebrew-asm56k/releases/download/bottles-0.1.0-20251016-070204"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4ade4e85d70a37a061bf161c75c93a2970fc690e40d577d43a1400aec32a92fd"
    sha256 cellar: :any_skip_relocation, sequoia:       "f13d83c746b0fb6c3c4fa46c9f7189757b69bfb20013ba023f0c81175ef3addc"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "5be41b7be8db45541c2d270182764d562dd23022e16557cfcf471b95ac1a3be3"
  end

  def install
    system "make", "CC=clang", "CFLAGS=--std=c89"
    bin.install "./build/asm56k"
  end

  test do
    assert_match "No input file given.", shell_output("#{bin}/asm56k 2>&1", 1)
  end
end
