let
  # The order of assignments does not matter, so 'b' can be assigned
  # with a reference to 'a' before 'a' is assigned.
  b = a + 1;
  c = a + b;
  a = 1;
  # The names assigned above are locally scoped, meaning they are
  # only accessible within the let binding itself (which includes
  # the in-block below).
in {  c = c; a = a; b = b; }
