# Homebrew Tap — asm56k DSP56001 assembler

This tap provides prebuilt [Homebrew](https://brew.sh) bottles for
[`asm56k`](https://github.com/kareandersen/asm56k), an assembler targeting the **Motorola DSP56001** (with partial DSP56301 support).

---

## 🔧 Installation

```bash
brew tap kareandersen/homebrew-asm56k
brew install asm56k
```

You can also install directly in one command:

```bash
brew install kareandersen/homebrew-asm56k/asm56k
```

Homebrew will automatically select the correct bottle for your macOS version and CPU architecture (Apple Silicon or Intel).

---

## 📦 About `asm56k`

`asm56k` is a fast, open-source assembler for Motorola 56k DSPs as used in the Atari Falcon030 and others.

- Supports DSP56001 instruction set
- Supports direct output to the .P56 binary format as well as the ASCII based .LOD
- Supports C and 68k assembly output formats
- Cross-platform and lightweight (no dependencies)
- Partial DSP56301 support

---

## 🏗️ Project Lineage

`asm56k` has a long history.

It originates from a **Motorola DSP56001 assembler** written by **Quinn C. Jensen** in the early 1990s.
That code formed the foundation for a rewritten assembler by **sqward** for the *Deesse* project, focused on cross-assembling DSP code for the Atari Falcon030 DSP.

The code was later **refactored and modernized by Thorsten Otto**, who fixed build issues, removed obsolete Python dependencies, and improved native Atari compilation support.

This Homebrew tap builds from **[kareandersen/asm56k](https://github.com/kareandersen/asm56k)** —
a fork of **th-otto/asm56k** — used primarily for packaging and distributing pre-built macOS bottles.
At this stage, it serves as a **build-only fork**, preserving the upstream source unchanged while providing automated bottle releases.

> In the future, this tap may be updated to build directly from **th-otto/asm56k** once upstream changes stabilize and if tarball releases start surfacing :)

The project lineage:

```
Quinn C. Jensen (original lexer & assembler base)
       ↓
sqward (Bitbucket: DSP56001/DSP56301 cross-assembler rewrite)
       ↓
th-otto (GitHub: build fixes, Atari native compilation)
       ↓
kareandersen (GitHub: Homebrew build fork & CI integration)
```

---

## 🧰 Tap Details

This tap automatically builds and publishes bottles via GitHub Actions.

### Bottled architectures

| macOS version | Architecture | Tag |
|----------------|---------------|-----|
| Sequoia (macOS 15) | arm64 | `arm64_sequoia` |
| Sequoia (macOS 15) | x86_64 | `sequoia` |
| Tahoe (macOS 16)   | arm64 | `arm64_tahoe` |

Each bottle is uploaded as part of the **`bottles-*`** release series.

---

## ⚙️ Maintainer Notes

This tap is maintained by [Kåre Andersen](https://github.com/kareandersen).

---

## 🧩 License

`asm56k` is released under its original upstream license.
It's a bit unclear since the repository contains a GPL-2 license file but mentions "MIT or BSD".

See the [repository](https://github.com/kareandersen/asm56k) for details.

