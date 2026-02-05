package additional_basics

import "core:fmt"

main :: proc() {
	result := is_bigger_than(3, 2)
	fmt.println("Result is: ", result)
	// if statement in odin
	permitted_age := 18
	if permitted_age < 18 {
		fmt.println("You are under age for now!")
	} else if permitted_age > 18 {
		fmt.println("You are over age for this group.")
	} else {
		fmt.println("You are in the right age, the right time.!")
	}
}

// checking out procedure in odin
is_bigger_than :: proc(number: int, compare_to: int) -> bool {
	return number > compare_to
}
