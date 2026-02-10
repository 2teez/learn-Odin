package functions

import "core:fmt"

main :: proc() {
	fmt.println("Hellope!")
	write_message("Welcome Home..")
	if result, ok := divide_and_double(3, 8); ok {
		fmt.println(result)
	}
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
