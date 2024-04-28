# Nix language basics

Each `*.nix` file in this directory is derived from, and represents a concept in, the nix.dev tutorial [here](https://nix.dev/tutorials/nix-language).

All `*.nix` files can be evaluated using:  
`nix-instantiate --eval file.nix` or  
`nix-instantiate --eval --strict file.nix`

The latter can be used when an expression isn't fully evaluated due to Nix's inherently lazy evaluation.
