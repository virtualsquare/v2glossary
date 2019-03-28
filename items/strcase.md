## strcase (v²)

It is a library that implements a multiway branch (switch) for short string in C.

It was created to allow the programmer to write switch with strings for the cases instead of
integer, as using a chain of if-then-else statements can often be too cumbersome.

It works for short strings (8 char max) and the case strings are specified one letter at a time with
commas in between as arguments of the STRCASE macro. The guard of the switch statement is passed as
an argument to the strcase funtion.

The whole library is contained in one header file.
