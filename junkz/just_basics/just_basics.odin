package just_basics

import "core:fmt"

ARRAY_SIZE :: 10

main :: proc() {
	ten_ints := [ARRAY_SIZE]int{6, 4, 7, 10, 1, -1, -9, 100, 1, 54}

	cmp := 6

	counter: int
	for value in ten_ints {
		counter += 1
		if is_bigger_than(value, cmp) {
			fmt.printfln("ten_int[%v]: %v, is bigger than %v\n", counter, value, cmp)
		}
	}
}

is_bigger_than :: proc(first_number: int, last_number: int) -> bool {
	return first_number > last_number
}
