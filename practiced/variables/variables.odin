package variables

import "core:fmt"

main :: proc() {
	number := 8
	age: int = 32
	fmt.println(number, age)
	// change age
	age = 23; fmt.println("New age: ", age)

}
