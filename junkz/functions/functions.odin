package functions

import "core:fmt"

main :: proc() {
	fmt.println("Hellope!")
	write_message("Welcome Home..")
}

write_message :: proc(message: string, label: string = "Info") {
	if label != "" {
		fmt.print(label)
		fmt.print(": ")
	}
	fmt.println(message)
}
