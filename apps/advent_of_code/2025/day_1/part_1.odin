package aoc_2025_day_1

import "core:fmt"
import "core:strconv"
import "core:strings"

part_1 :: proc(file_content: ^string) {
	ok: bool

	dial := Dial_new(ClickType.StopOnZero)

	password := 0
	
	file_content := strings.clone(file_content^)
	defer delete(file_content)

	for line in strings.split_lines_iterator(&file_content) {
		direction_string := line[0:1]

		direction: Direction

		direction, ok = Direction_from_string(direction_string)

		if !ok {
			fmt.printfln("Failed to convert \"%s\" to Direction", direction_string)
			return
		}

		distance_string := line[1:]

		distance: int

		distance, ok = strconv.parse_int(distance_string)

		if !ok {
			fmt.printfln("Failed to convert \"%s\" to int", distance_string)
			return
		}

		password += Dial_rotate(&dial, direction, distance)
	}

	fmt.printfln("Part 1 :: Password: %v", password)
}
