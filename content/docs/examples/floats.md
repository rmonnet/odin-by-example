---
weight: 4
---
# Floats

Odin provides the typical floating point types but also mathematical types (complex, quaternions) and endian aware types.

{{< code-snippet file="examples/floats/floats.odin" lang="odin" >}}

In addition to the typical `f32` and `f64` types (often called float and double in other languages), Odin supports an `f16` type.
If the type is omitted for a variable declaration, Odin will infer `f64`.

For printing, Odin supports the typical formats:
- `%f` for decimal format with no exponent
- `%e` for scientific notation
- `%g` for scientific notation with maximum precision

And the number of digits, total and after the decimal point, can be specified before the format (ex: `%10.8f`).

Odin also support complex and quaternion types for mathematical applications.
Complex represents a point in the 2D plan with a real and an imaginary component.
Quaternion represents a point in 4 dimension with a real component and three imaginary components (i, j, and k).
It is useful to efficiently define rotations in 3D space.
Odin provides `complex32`, `complex64` and `complex128` respectively holding `f16`, `f32`, and `f64` components.
The quaternion types are `quaternion64`, `quaternion128`, and `quaternion256`, respectively holding `f16`, `f32`, and `f64` components.

{{< code-snippet file="examples/floats/output.txt" lang="text" >}}
