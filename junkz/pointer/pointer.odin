package pointer

import "core:fmt"

main :: proc() {
	fmt.println("Using Pointer!")
	number := 42
	fmt.println(&number, number) //=> 43
	number_pointer_value: ^int = &number
	increment_number(&number)
	fmt.println(&number, number, number_pointer_value, number_pointer_value^) //=> 43
	numbers := [10]int{3, 8, 0, 12, 7, 4, 5, 11, 43, 1}
	eight_number := &numbers[9]
	eight_number^ = 56
	fmt.println(eight_number, eight_number^, &numbers[9], numbers[9])
}

increment_number :: proc(number: ^int) {
	number^ += 1
}
