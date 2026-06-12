---
weight: 5
---
# Strings

Odin strings are defined with the type `string` and are represented as an array of `u8` (`byte`) and a length.
The built-in `len()` will return the number of bytes in the string.
If the string is ASCII encoded, this correspond to the number of characters but if it is UTF-8, then you need to use procedures like `utf8.rune_count_in_string()` to get the number of runes.

Odin supports strings concatenations (using `+`) on constant strings but not on variables since this would hide memory allocation.
If you need to combine strings variables, one solution is the `fmt.tprintf()` procedure [^1].

[^1]: The `t` in `tprintf()` stands for temporary allocator, the `a` in `aprintf()` stands for the default allocator but that's a story for another section.

Odin supports multi-line with the backtick (```) notation.
In a multi-line string literal the escape characters (`\.`) are not interpreted.

{{< code-snippet file="examples/strings/strings.odin" lang="odin" start="8" end="33" >}}

{{< code-snippet file="examples/strings/output.txt" lang="text" >}}
