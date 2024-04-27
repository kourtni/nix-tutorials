# Nix Tutorials

This repository is simply intended to document my progression through the tutorials found at
https://nix.dev/tutorials.

## Important tips:
A few nuggets of information that are important to keep in mind.

### Pin Nixpkgs for Reproducibility

This tip is a summary of information taken from [the nix.dev tutorials](https://nix.dev/tutorials/first-steps/towards-reproducibility-pinning-nixpkgs).

Importing `<nixpkgs>` may be convenient for quickly checking if you can correctly create a working Nix expression by importing Nix packages. However doing so doesn't create a fully reproducible Nix expression.

Pinning an exact version of Nixpkgs will create fully reproducible Nix expressions. This can be done like so:
```
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz") {}
}:

...
```
It is recommended to follow the latest stable NixOS release (ex: `nixos-23.11`), or the latest unstable release (`nixos-unstable`).

However, a list of all the releases and the latest commit can be viewed at [status.nixos.org](https://status.nixos.org).

More examples of pinning nixpkgs can be found [here](https://nix.dev/reference/pinning-nixpkgs#ref-pinning-nixpkgs).
