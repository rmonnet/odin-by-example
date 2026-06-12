---
weight: 6
---
# Arrays

Odin supports fixed size arrays. Their type is declared with `[N]TYPE` and literals with `[N]TYPE{VAL1, ...}`.

Their type can conveniently be printed using the `%v` format which knows how to print any type in Odin.
You can get an array length by using the built-in `len()` and access elements with the `VAR[...]` notation.
In Odin, array bounds are type-checked (at compile time if the index is known at compile time).

Odin supports mathematical algorithm by extending arithmetic operators to arrays of numeric types.
It also provide shortcuts for array size typically associated with math or physics equations (like `.x`, `.y`. and `.z` for the first three elements)

{{< code-snippet file="examples/arrays/arrays.odin" lang="odin" >}}

{{< code-snippet file="examples/arrays/output.txt" lang="text" >}}
