package types

import "core:fmt"

main :: proc() {
	// type declaration
	rect1 := Rectangle {
		width  = 20,
		height = 10,
	}

	rect2: Rectangle = {
		width  = 20,
		height = 10,
	}
	fmt.println(rect1, rect2)
	direction: Direction = .West
	switch direction {
	case .North:
		fmt.println("Constant as the northern star.")
	case .East:
		fmt.println("the sun rises..")
	case .West:
		fmt.println("beautiful sun set..")
	case .South:
		fmt.println("oil drips.")
	}
	//
	// using union and find the size of the union
	// union takes the size of the largest
	// item in the union
	my_union: My_Union = int(7)
	fmt.println(print_union_size(my_union))

	my_union = f32(0.78)
	fmt.println(print_union_size(my_union))

	my_union = Person_Data {
		health = 34,
		age    = 24,
	}
	fmt.println(print_union_size(my_union))
}

// proc with union
print_union_size :: proc(kind: My_Union) -> int {
	return size_of(kind)
}

// struct
Rectangle :: struct {
	x:      f32,
	y:      f32,
	width:  f32,
	height: f32,
}
// enums
Direction :: enum {
	North,
	East,
	West,
	South,
}
// using union
My_Union :: union {
	f32,
	int,
	Person_Data,
}

//
Person_Data :: struct {
	health: f32,
	age:    int,
}
