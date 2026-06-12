package xarrays

import "core:fmt"

main :: proc() {

	primes := [5]int{2, 3, 5, 7, 11}
	more := [?]int{13, 17, 19, 23, 29}

	fmt.printf("more_primes=%v, len=%d, 1st element=%d\n", more, len(more), more[0])

	// The following expression would generate a compile error:
	// Index '6' is out of bounds range 0..<5, got 6
	// x := more_primes[6]

	v1 := [3]f64{1.0, 2.0, 3.0}
	v2 := [3]f64{10.0, 20.0, 30.0}
	v3: [3]f64 = v1 + v2
	fmt.printf("v3=%v, x=%f, y=%f, z=%f\n", v3, v3.x, v3.y, v3.z)

}

