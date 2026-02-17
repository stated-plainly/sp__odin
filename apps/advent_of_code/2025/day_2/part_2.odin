package aoc_2025_day_2

import "core:fmt"
import "core:strconv"
import "core:strings"

part_2 :: proc(file_content: ^string) {
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

			id_str_len := len(id_str)

			max_pattern_len := id_str_len / 2

			for i in 1..=max_pattern_len {
				pattern := id_str[0:i]

				pattern_len := len(pattern)

				if (id_str_len % pattern_len) != 0 do continue

				is_match := true
				entered_loop := false

				for j := pattern_len; j <= (id_str_len - pattern_len); j += pattern_len {
					if entered_loop == false do entered_loop = true

					id_substr := id_str[j:(j + pattern_len)]

					if pattern != id_substr {
						is_match = false
						break
					}
				}

				if !entered_loop || !is_match do continue

				sum += id
				break
			}
		}
	}

	fmt.printfln("Part 2 :: Sum : %v", sum)
}
