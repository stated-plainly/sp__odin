package aoc_2025_day_1

Direction :: enum {
	Left,
	Right,
}

Direction_from_string :: proc(value: string) -> (Direction, bool) {
	direction: Direction

	switch value {
		case "L":
			return Direction.Left, true
		case "R":
			return Direction.Right, true
	}

	return nil, false
}
