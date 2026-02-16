# NixOS Base Scaffold

## Purpose
Minimal template for NixOS projects. Includes the essentials to get started.

[Spanish](./docs/readme.es.md)

## Structure
- `flake.nix`: Basic configuration with `nixpkgs`.
- `flake.lock`: Pinned version of Nixpkgs (25.11).
- `justfile`: Task automation (build, clean, format).

## Basic Usage
```bash
# Build virtual machine
just build

# Run
just run
```

## Notes
- Does not include additional configurations.
- Ideal as a starting point.
