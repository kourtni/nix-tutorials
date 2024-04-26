let
  # We use a version of Nixpkgs pinned to a specific release branch, and explicitly set
  # configuration options and overlays to avoid them being inadvertently overridden by
  # global configuration.
  # For pinning info see https://nix.dev/reference/pinning-nixpkgs#ref-pinning-nixpkgs
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-23.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

# nix-shell is used for constructing a shell environment with tools needed to debug package builds.
# For info on tools provided by stdenv see https://nixos.org/manual/nixpkgs/stable/#sec-tools-of-stdenv
# mkShellNoCC is similar but it creates a shell environment without a compiler toolchain.
# mkShellNoCC is a wrapper around mkDerivation, so it takes the same arguments as mkDerivation.
pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay
    lolcat
  ];

  # Any attribute name passed to mkShellNoCC that is not reserved otherwise and has a value
  # which can be coerced to a string will end up as an environment variable.
  GREETING = "Hello, fellow Nix adventurer!";

  shellHook = ''
    echo $GREETING | cowsay | lolcat
  '';
}