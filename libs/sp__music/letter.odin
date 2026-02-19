package sp__music

Letter :: enum {
	C,
	D,
	E,
	F,
	G,
	A,
	B,
}

Letter__display_name :: proc(letter: Letter) -> string {
	display_name: string

	switch letter {
		case .C:
			display_name = "C"
		case .D:
			display_name = "D"
		case .E:
			display_name = "E"
		case .F:
			display_name = "F"
		case .G:
			display_name = "G"
		case .A:
			display_name = "A"
		case .B:
			display_name = "B"
	}

	return display_name
}

Letter__keyboard_friendly_name := proc(letter: Letter) -> string {
	keyboard_friendly_name: string

	switch letter {
		case .C:
			keyboard_friendly_name = "c"
		case .D:
			keyboard_friendly_name = "d"
		case .E:
			keyboard_friendly_name = "e"
		case .F:
			keyboard_friendly_name = "f"
		case .G:
			keyboard_friendly_name = "g"
		case .A:
			keyboard_friendly_name = "a"
		case .B:
			keyboard_friendly_name = "b"
	}

	return keyboard_friendly_name
}
