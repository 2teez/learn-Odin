package variables_const

import "core:fmt"

main :: proc() {
	number: int = 7
	another_number := 42
	decimal_number: f32 = 6
	bigger_decimal_number := 6.90
	fmt.println(number, another_number, decimal_number, bigger_decimal_number)
	// get const values
	AGELESS :: 23
	fmt.println(AGELESS)
}
