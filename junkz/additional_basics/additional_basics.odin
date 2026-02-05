package additional_basics

import "core:fmt"

main :: proc() {
	result := is_bigger_than(3, 2)
	fmt.println("Result is: ", result)
}

// checking out procedure in odin
is_bigger_than :: proc(number: int, compare_to: int) -> bool {
	return number > compare_to
}
