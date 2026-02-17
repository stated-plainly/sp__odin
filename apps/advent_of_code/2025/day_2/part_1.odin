package aoc_2025_day_2

import "core:fmt"
import "core:strconv"
import "core:strings"

part_1 :: proc(file_content: ^string) {
	sum: int
	ok: bool

	file_content := strings.clone(file_content^)

	for id_range in strings.split(file_content, ",") {
		id_range := strings.split(id_range, "-")

		start_id: int

		start_id, ok = strconv.parse_int(id_range[0])

		if !ok do continue

		end_id: int

		end_id, ok = strconv.parse_int(id_range[1])

		if !ok do continue

		for id in start_id..=end_id {
			buf: [10]byte

			id_str := strconv.write_int(buf[:], i64(id), 10)

			if (len(id_str) % 2) != 0 do continue

			halfway_point := len(id_str) / 2

			lh := id_str[0:halfway_point]
			rh := id_str[halfway_point:]

			if lh != rh do continue

			lh_id: int

			if lh_id, ok = strconv.parse_int(lh); ok {
				sum += id
			}
		}
	}

	fmt.printfln("Part 1 :: Sum : %v", sum)
}
