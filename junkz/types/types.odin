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
