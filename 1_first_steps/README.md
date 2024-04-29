# First Steps
https://nix.dev/tutorials/first-steps/

Not all of the sections of the `First steps` tutorial yield code artifacts, but they include:

## Ad hoc shell environments
https://nix.dev/tutorials/first-steps/ad-hoc-shell-environments

Shows how to immediately use programs packaged with Nix by using the command line from a Nix shell.

## Reproducible interpreted scripts
https://nix.dev/tutorials/first-steps/reproducible-scripts

Shows how to use Nix to create and run a shebang script ([nixpkgs-releases.sh](nixpkgs-releases.sh))
to configure a temporary shell that exists only for the duration of time that the script is running,
and in which commands are imperatively executed within that shell.

Options like `--pure` can be used to additionally isolate the temporary shell from programs that
might exist on the machine the script is running.

## Declarative shell environments with shell.nix
https://nix.dev/tutorials/first-steps/declarative-shell

Shows how to create and use a Nix file ([shell.nix](shell.nix)) to declaratively configure
reproducible shell environments.

## Towards reproducibility: pinning Nixpkgs
https://nix.dev/tutorials/first-steps/towards-reproducibility-pinning-nixpkgs

Discusses the implications on reproducibility of various methods that can be used to determine the
version of Nixpkgs that a Nix expression will be based upon.
