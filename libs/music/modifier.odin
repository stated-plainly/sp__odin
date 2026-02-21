package sp__music

Modifier :: enum {
	Flat,
	Sharp,
}

Modifier__display_name :: proc(modifier: Modifier) -> string {
	display_name: string

	switch modifier {
		case .Flat:
			display_name = "♭"
		case .Sharp:
			display_name = "♯"
	}

	return display_name
}

Modifier__keyboard_friendly_name := proc(modifier: Modifier) -> string {
	keyboard_friendly_name: string

	switch modifier {
		case .Flat:
			keyboard_friendly_name = "b"
		case .Sharp:
			keyboard_friendly_name = "s"
	}

	return keyboard_friendly_name
}
