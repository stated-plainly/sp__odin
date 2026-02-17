package aoc_2025_day_1

Dial :: struct {
	value: int,
	click_type: ClickType,
}

Dial_new :: proc(click_type: ClickType) -> Dial {
	return Dial {
		value = 50,
		click_type = click_type,
	}
}

Dial_rotate :: proc(dial: ^Dial, direction: Direction, distance: int) -> int {
	click_count: int

	switch direction {
		case Direction.Left:
			click_count = Dial_rotate_left(dial, distance)
		case Direction.Right:
			click_count = Dial_rotate_right(dial, distance)
	}

	return click_count
}

@(private="file")
Dial_rotate_left :: proc(dial: ^Dial, distance: int) -> int {
	if distance == 0 do return 0

	distance := distance

	click_count := 0

	switch dial^.click_type {
		case ClickType.StopOnZero:
			dial^.value -= distance
			dial^.value %= 100
			if dial^.value == 0 do click_count += 1
		case ClickType.EncounterZero:
			if (dial^.value != 0) && (distance >= dial^.value) {
				distance -= dial^.value
				dial^.value = 0
				click_count += 1
			}

			for distance >= 100 {
				distance -= 100
				click_count += 1
			}

			if distance > 0 {
				if dial^.value == 0 {
					dial^.value = 100 - distance 
				} else {
					dial^.value -= distance
				}
			}
	}

	return click_count
}

@(private="file")
Dial_rotate_right :: proc(dial: ^Dial, distance: int) -> int {
	if distance == 0 do return 0

	distance := distance

	click_count := 0

	switch dial^.click_type {
		case ClickType.StopOnZero:
			dial^.value += distance
			dial^.value %= 100
			if dial^.value == 0 do click_count += 1
		case ClickType.EncounterZero:
			if (dial^.value != 0) && (distance >= (100 - dial^.value)) {
				distance -= (100 - dial^.value)
				dial^.value = 0
				click_count += 1
			}

			for distance >= 100 {
				distance -= 100
				click_count += 1
			}

			if distance > 0 {
				dial^.value += distance 
			}
	}

	return click_count
}
