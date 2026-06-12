package xfloats

import "core:fmt"

main :: proc() {

	f := 1.234
	fmt.printf("The inferred type for floating point variables is %T\n", f)

	a: f16 = 1.5
	b: f32 = 3.0
	c: f64 = 3.14159265358979
	fmt.printf("A floating-point can be represented as %6.4f, or %e, or %g\n", c, c, c)

	cn: complex128 = complex(1.0, 2.0)
	fmt.printf("cn=%v, type of components = %T\n", cn, imag(cn))

	qu := quaternion(real = 1.0, imag = 2.0, jmag = 3.0, kmag = 4.0)
	fmt.printf("qu=%v, type of qu = %T, type of components = %T\n", qu, qu, imag(qu))
}

