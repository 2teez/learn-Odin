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
	// for -loop, for-each and for
	// are all you use in odin programming langauge
	i := 0
	for {
		fmt.println(i)
		i += 1
		// without the if statement the for loop statement
		// will loop forever!
		if i == 10 {
			break
		}
	}
	// another fo loop in opl
	i = 0
	for i < 10 {
		fmt.println(i)
		i += 1
	}
	//
	// using c-type for-loop
	for j := 0; j < 10; j += 1 {
		fmt.println(j)
	}
	// another for which is for-each
	for ai in 0 ..< 12 {
		fmt.println(ai)
	}
	// arrays in odin
	ten_ints: [10]int = {61, 81, 12, 41, 5, 10, 1234, 8, 4, 1}
	five_floats := [5]f32{5, 8, 2.5, 0.73, 0.00031}

	// print array
	for value in ten_ints {
		fmt.println(value)
	}
	// reverse and print the float array
	#reverse for fvalue in five_floats {
		fmt.println(fvalue)
	}
}

// checking out procedure in odin
is_bigger_than :: proc(number: int, compare_to: int) -> bool {
	return number > compare_to
}
