#!/usr/bin/env nix-shell

# The -i option set bash as interpreter for file.
# The --pure otion prevents the script from using programs that may already exist on the system.
#! nix-shell -i bash --pure

# The -p option specifies which packages to install into the shell so the script runs.
#! nix-shell -p bash cacert curl jq python3Packages.xmljson

# The -I option references a specific Git commit & ensures the same package versions are used whenever run.
#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/2a601aafdc5605a5133a2ca506a34a3a73377247.tar.gz

curl https://github.com/NixOS/nixpkgs/releases.atom | xml2json | jq .
