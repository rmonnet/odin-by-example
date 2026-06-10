package values

import "core:fmt"

main :: proc() {

	is_it: bool
	number: int
	fmt.println("Variables are initialized to their type zero values:")
	fmt.printf("    is_it = %t, number = %d\n", is_it, number)

	answer := 42
	fmt.println("Omitted types are inferred from the initial value:")
	fmt.printf("    answer type = %T\n", answer)

	letter: rune = 'A'
	pi: f64 = 3.14159

	USER_NAME :: "Ken Thompson"
	fmt.printf("A compile time constant: %s\n", USER_NAME)
}

