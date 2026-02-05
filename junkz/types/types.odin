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
}

Rectangle :: struct {
	x:      f32,
	y:      f32,
	width:  f32,
	height: f32,
}
