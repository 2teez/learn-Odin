package functions

import "core:fmt"

Gender :: enum {
	Male,
	Female,
}

Person :: struct {
	name:   string,
	age:    uint,
	gender: Gender,
}

main :: proc() {
	fmt.println("Hellope!")
	write_message("Welcome Home..")
	if result, ok := divide_and_double(3, 8); ok {
		fmt.println(result)
	}
	// person instance
	person := Person {
		age    = 34,
		name   = "java",
		gender = .Male,
	}

	// using the pointer parameter
	print_person_info_using_pt(&person)
	// using function with paramater which is refers
	// as immutable reference
	print_person_info(person)
}

write_message :: proc(message: string, label: string = "Info") {
	if label != "" {
		fmt.print(label)
		fmt.print(": ")
	}
	fmt.println(message)
}
// getting two values return
divide_and_double :: proc(n: f32, d: f32) -> (f32, bool) {
	if d == 0 {
		return 0, false
	}
	return (n / d) * 2, true
}

// function with pointer
print_person_info_using_pt :: proc(p: ^Person) {
	fmt.println(p.name, p.age, p.gender)
}

// function with immutable reference
print_person_info :: proc(p: Person) {
	fmt.println(p.name, p.age, p.gender)
}
