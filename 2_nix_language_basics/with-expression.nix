let
  a = {
    x = 1;
    y = 2;
    z = 3;
  };
in
# The with expression `with ...; ...` allows access to attributes
# without repeatedly referencing their attribute set. Those
# attributes are only in scope of the expression following the
# semicolon (;).
with a; [ x y z ]
