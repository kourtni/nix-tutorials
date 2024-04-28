{
  # File paths do NOT use any quotations. Absolute paths start with `/`.
  a = /absolute/path;
  # Relative paths contain at least one slash (/) but do not start with one.
  b = ./relative;
  c = relative/path;
  d = ./.;  # One dot (.) denotes the current directory within the given path.
  e = ../.;  # Two dots (..) denote the parent directory.

  # Lookup paths (aka angle bracket syntax) should be avoided in production code
  # because they are not reproducible. The value of a lookup path is a file
  # system path that depends on the value of `builtins.nixPath`
  avoid = <nixpkgs>;
  lookup = <nixpkgs/lib>;
}
