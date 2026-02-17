package aoc_2025_day_2

import "core:fmt"
import "core:os"

main :: proc() {
	file_path := "input_data.txt"

	data, ok := os.read_entire_file(file_path)

	if !ok {
		fmt.printfln("Failed to read file: \"%s\"", file_path)
		return
	}

	defer delete(data)

	file_content := string(data)

	part_1(&file_content)
	part_2(&file_content)
}
