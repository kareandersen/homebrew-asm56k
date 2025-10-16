# Updates the bottle block in a Homebrew formula in-place

BEGIN { in_bottle = 0 }

{
  # When we hit the start of the bottle block, print it and our new content
  if ($0 ~ /^  bottle do$/) {
    print
    print "    root_url \"https://github.com/" repo "/releases/download/" tag "\""
    print "    sha256 cellar: :any_skip_relocation, arm64_sequoia: \"" a "\""
    print "    sha256 cellar: :any_skip_relocation, sequoia:       \"" i "\""
    print "    sha256 cellar: :any_skip_relocation, arm64_tahoe:   \"" t "\""
    in_bottle = 1
    next
  }

  # Skip all old bottle lines until we reach 'end'
  if (in_bottle) {
    if ($0 ~ /^  end$/) {
      in_bottle = 0
      print
    }
    next
  }

  # Pass all other lines unchanged
  print
}
