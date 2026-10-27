# Emun Labs Homebrew Tap (`emunlabs/tap`)

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache_2.0-2563eb.svg)](https://opensource.org/licenses/Apache-2.0)
[![Formula: chinwag 0.1.0](https://img.shields.io/badge/Formula-chinwag_0.1.0-10b981.svg)](https://github.com/emunlabs/chinwag/releases/tag/v0.1.0-genesis)

Official Homebrew formulae for **Emun Labs, Inc.** developer tools.

---

## Quickstart: Install `chinwag` (`v0.1.0-genesis`)

Install [`chinwag`](https://github.com/emunlabs/chinwag) — the local-first Multi-Agent Swarm Coordination Bus, Atomic Lease Engine, and Cryptographic Flight Recorder (`bin/chinwag`, plus automatic `git-chinwag`, `gh-chinwag`, `git-emun`, and `gh-emun` CLI aliases):

```sh
brew tap emunlabs/tap
brew install emunlabs/tap/chinwag
```

Verify your installation:

```sh
chinwag --version
git chinwag --help
gh chinwag --help
```

### Optional: Install the GitHub CLI Extension (`gh-chinwag`)

You can also install `gh-chinwag` directly via the GitHub CLI extension manager:

```sh
gh extension install emunlabs/gh-chinwag --pin v0.1.0
```

---

## Available Formulae

| Formula | Version | Architecture | SHA-256 (`aarch64-apple-darwin`) | Description |
| :--- | :--- | :--- | :--- | :--- |
| [`Formula/chinwag.rb`](Formula/chinwag.rb) | `0.1.0` (`v0.1.0-genesis`) | `aarch64-apple-darwin` (Apple Silicon) | `297d41e02107b8dc9b1f0fa1ab8326118b8b89a626089459e5524bf69d3c5c57` | Single-file `7.47 MB` Rust binary with embedded `cr-sqlite`, `Ed25519` Git commit signing, MCP `stdio`/loopback `HTTP` server, `iroh` QUIC P2P swarm, and `RFC 9180` HPKE flight-recorder capsules. |

---

## License & Provenance

- **Maintainer:** **Emun Labs, Inc.** · `1401 Lavaca St STE 81335, Austin, TX 78701`
- **License:** Licensed under the **Apache License, Version 2.0** (`SPDX-License-Identifier: Apache-2.0`). See [`LICENSE`](LICENSE) for full terms.
