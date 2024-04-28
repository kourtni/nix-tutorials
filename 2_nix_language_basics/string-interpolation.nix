let
  name = "Nix";
in
# The value of a Nix expression can be inserted into a character string with
# the dollar-sign and braces (${ }). Only character strings or values that can
# be represented as a character string are allowed.
"hello ${name}"
