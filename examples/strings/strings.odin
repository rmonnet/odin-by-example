package xstrings

import "core:fmt"
import "core:unicode/utf8"

main :: proc() {

	famous_programmer := "Ken Thompson"
	fmt.printf("'%s', len=%d\n", famous_programmer, len(famous_programmer))

	hello_in_korean := "안녕하세요"
	bytes_count := len(hello_in_korean)
	rune_count := utf8.rune_count_in_string(hello_in_korean)
	fmt.printf("'%s', len=%d, count=%d\n", hello_in_korean, bytes_count, rune_count)

	hello_world := "hello" + " world"
	hello := "hello"
	world := " world"
	// The following line would generate a compile error:
	// String concatenation is only allowed with constant strings
	//hello_world_alt := hello + world

	hello_world_alt := fmt.tprintf("%s%s", hello, world)
	fmt.println(hello_world_alt)

	multi_line := `
This
is
a
multi-line
(no escape characters)\n
`
	fmt.printf(">%s<\n", multi_line)
}

