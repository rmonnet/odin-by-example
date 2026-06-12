package xintegers

import "core:fmt"

main :: proc() {

	a: int = -123
	b: uint = 123
	fmt.printf("Size of int on this machine: %d bytes\n", size_of(a))
	fmt.printf("Size of uint on this machine: %d bytes\n", size_of(b))

	c: i32 = -456
	d: u32 = 456
	fmt.printf("c=%d, d=%d\n", c, d)

	p: uintptr = 0xFFFF0000
	q: byte = 'A'
	r: rune = '\U0001F600'
	fmt.printf("q=%v, r=%v\n", q, r)

	// The following line would generate a compile error:
	// `Cannot assign value 'b' of type 'uint' to 'int' in assignment`
	// a = b
	//
	b1 := int(b)
	d1 := cast(i32)d
	r1: rune = auto_cast q
	fmt.printf("a=%v, c=%v, r=%v\n", b1, d1, r1)

	// Endian aware types
	e: u16le = 0xABCD
	f := u16be(e)
	g: u16be = transmute(u16be)(e)
	fmt.printf("e=%X, f=%X, g=%X\n", e, f, g)

}

