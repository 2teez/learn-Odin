package pointer

import "core:fmt"

main :: proc() {
	fmt.println("Using Pointer!")
	number := 42
	fmt.println(&number, number) //=> 43
	number_pointer_value: ^int = &number
	increment_number(&number)
	fmt.println(&number, number, number_pointer_value, number_pointer_value^) //=> 43
}

increment_number :: proc(number: ^int) {
	number^ += 1
}
