let
  x = 1;
  y = 2;
  a = { b = 3; c = 4; };
in
{
  # `inherit` is shorthand for assigning the value of a name from an existing
  # scope to the same name in a nested scope. It is for convenience to avoid
  # repeating the same name multiple times.
  inherit x y;

  # It is also possible to inherit names from a specific attribute set with
  # parentheses.
  inherit (a) b c;
}
