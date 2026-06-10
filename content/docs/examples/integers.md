---
weight: 999
---
# Integers

Odin strives to provide a precise set of types to support day-to-day and low-level programming.

{{< code-snippet file="examples/integers/integers.odin" lang="odin" >}}

Odin supports platform dependents integer types, signed (`int`) and unsigned (`uint`).
It also supports explicitly sized signed (`i8`, `i16`, `i32`, `i64`, `i128`) and unsigned (`u8`, `u16`, `u32`, `u64`, `u128`) integers.

The types `byte` and `rune` are aliases for `u8` and `i32` and are used to support ASCII and Unicode characters.
Odin also supports a raw pointer type (`uintptr`) large enough to contain any pointer on the given platform.

There is no implicit conversion in Odin (contrary to C).
All conversion must be made explicit with:
- `TYPE(VALUE)` (only convert if safe to do so)
- `cast(TYPE)VALUE` (always convert - you know what you are doing)
- `auto_cast VALUE` (same as `cast` but assume the type from the target variable)
- `transmute(TYPE)VALUE` (change the type without touching the raw memory layout)

Finally Odin supports types with little-endian/big-endian awareness (`i8le`, ..., `i8be`, `u8le`, ..., `u8be`).
Odin will automatically convert between the types but will define the memory layout accordingly.


{{< code-snippet file="examples/integers/output.txt" lang="text" >}}
