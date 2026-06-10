---
weight: 3
---
# Variables

Odin variables are defined with the syntax `NAME : [TYPE] [= VALUE]` where either `TYPE` or `VALUE` can be omitted but not both.
If the type is omitted, Odin will infer the variable from its value [^1].
If the value is omitted, Odin will initialize the value to its default value [^2].
It is idiomatic in Odin to use the `NAME := VALUE` to initialize a variable and let the compiler infer the type.

Odin has compile time constant which acts like a `C` `#define` and are replaced by their literal value at runtime [^3].

[^1]: The inferred type will be one of `int`, `f64`, `bool`, `string`, or `rune` based on the value literal.

[^2]: The zero values are `0` for numeric types, `false` for booleans, `""` for strings, `\x00` for runes, and `nil` for pointers.

[^3]: As a consequence, you can get the address of a constant or index into a constant array.

{{< code-snippet file="examples/variables/variables.odin" lang="odin" >}}

...

{{< code-snippet file="examples/variables/output.txt" lang="text" >}}
