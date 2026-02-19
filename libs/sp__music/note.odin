package sp__music

import "core:strings"

Note :: struct {
	letter: Letter,
	alteration: int, // -ve -> flat | 0 -> neutral | +ve -> sharp
}

Note__new :: proc(letter: Letter, alteration := 0) -> Note {
	return Note { letter, alteration }
}

Note__from_root :: proc(root: Note, scale_degree: ScaleDegree) -> Note {
	note: Note

	switch scale_degree {
		case .One:
			note = Note__one_from_root(root)
		case .TwoFlat:
			note = Note__two_flat_from_root(root)
		case .Two:
			note = Note__two_from_root(root)
		case .ThreeFlat:
			note = Note__three_flat_from_root(root)
		case .Three:
			note = Note__three_from_root(root)
		case .Four:
			note = Note__four_from_root(root)
		case .FourSharp:
			note = Note__four_sharp_from_root(root)
		case .FiveFlat:
			note = Note__five_flat_from_root(root)
		case .Five:
			note = Note__five_from_root(root)
		case .FiveSharp:
			note = Note__five_sharp_from_root(root)
		case .SixFlat:
			note = Note__six_flat_from_root(root)
		case .Six:
			note = Note__six_from_root(root)
		case .SevenFlat:
			note = Note__seven_flat_from_root(root)
		case .Seven:
			note = Note__seven_from_root(root)
		case .Eight:
			note = Note__eight_from_root(root)
		case .NineFlat:
			note = Note__nine_flat_from_root(root)
		case .Nine:
			note = Note__nine_from_root(root)
		case .NineSharp:
			note = Note__nine_sharp_from_root(root)
		case .Eleven:
			note = Note__eleven_from_root(root)
		case .ElevenSharp:
			note = Note__eleven_sharp_from_root(root)
		case .ThirteenFlat:
			note = Note__thirteen_flat_from_root(root)
		case .Thirteen:
			note = Note__thirteen_from_root(root)
	}

	return note
}

Note__display_name :: proc(note: Note, allocator := context.allocator) -> string {
	b := strings.builder_make(context.temp_allocator)

	strings.write_string(&b, Letter__display_name(note.letter))

	if note.alteration < 0 {
		for _ in note.alteration..=-1 do strings.write_string(&b, Modifier__display_name(.Flat))
	} else if note.alteration > 0 {
		for _ in 1..=note.alteration do strings.write_string(&b, Modifier__display_name(.Sharp))
	}

	display_name := strings.clone(strings.to_string(b), allocator)

	return display_name
}

Note__keyboard_friendly_name :: proc(note: Note, allocator := context.allocator) -> string {
	b := strings.builder_make(context.temp_allocator)

	strings.write_string(&b, Letter__keyboard_friendly_name(note.letter))

	if note.alteration < 0 {
		for _ in note.alteration..=-1 do strings.write_string(&b, Modifier__keyboard_friendly_name(.Flat))
	} else if note.alteration > 0 {
		for _ in 1..=note.alteration do strings.write_string(&b, Modifier__keyboard_friendly_name(.Sharp))
	}

	keyboard_friendly_name := strings.clone(strings.to_string(b), allocator)

	return keyboard_friendly_name
}

@(private="file")
Note__one_from_root :: proc(root: Note) -> Note {
	return Note__new(root.letter, root.alteration)
}

@(private="file")
Note__two_flat_from_root :: proc(root: Note) -> Note {
	note := Note__two_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
Note__two_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> D
			note = Note__new(.D, root.alteration)
		case .D:
			// D -> E
			note = Note__new(.E, root.alteration)
		case .E:
			// E -> F#
			note = Note__new(.F, root.alteration + 1)
		case .F:
			// F -> G
			note = Note__new(.G, root.alteration)
		case .G:
			// G -> A
			note = Note__new(.A, root.alteration)
		case .A:
			// A -> B
			note = Note__new(.B, root.alteration)
		case .B:
			// B -> C#
			note = Note__new(.C, root.alteration + 1)
	}

	return note
}

@(private="file")
Note__three_flat_from_root :: proc(root: Note) -> Note {
	note := Note__three_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
Note__three_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> E
			note = Note__new(.E, root.alteration)
		case .D:
			// D -> F#
			note = Note__new(.F, root.alteration + 1)
		case .E:
			// E -> G#
			note = Note__new(.G, root.alteration + 1)
		case .F:
			// F -> A
			note = Note__new(.A, root.alteration)
		case .G:
			// G -> B
			note = Note__new(.B, root.alteration)
		case .A:
			// A -> C#
			note = Note__new(.C, root.alteration + 1)
		case .B:
			// B -> D#
			note = Note__new(.D, root.alteration + 1)
	}

	return note
}

@(private="file")
Note__four_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> F
			note = Note__new(.F, root.alteration)
		case .D:
			// D -> G
			note = Note__new(.G, root.alteration)
		case .E:
			// E -> A
			note = Note__new(.A, root.alteration)
		case .F:
			// F -> Bb
			note = Note__new(.B, root.alteration - 1)
		case .G:
			// G -> C
			note = Note__new(.C, root.alteration)
		case .A:
			// A -> D
			note = Note__new(.D, root.alteration)
		case .B:
			// B -> E
			note = Note__new(.E, root.alteration)
	}

	return note
}

@(private="file")
Note__four_sharp_from_root :: proc(root: Note) -> Note {
	note := Note__four_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
Note__five_flat_from_root :: proc(root: Note) -> Note {
	note := Note__five_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
Note__five_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> G
			note = Note__new(.G, root.alteration)
		case .D:
			// D -> A
			note = Note__new(.A, root.alteration)
		case .E:
			// E -> B
			note = Note__new(.B, root.alteration)
		case .F:
			// F -> C
			note = Note__new(.C, root.alteration)
		case .G:
			// G -> D
			note = Note__new(.D, root.alteration)
		case .A:
			// A -> E
			note = Note__new(.E, root.alteration)
		case .B:
			// B -> F#
			note = Note__new(.F, root.alteration + 1)
	}

	return note
}

@(private="file")
Note__five_sharp_from_root :: proc(root: Note) -> Note {
	note := Note__five_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
Note__six_flat_from_root :: proc(root: Note) -> Note {
	note := Note__six_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
Note__six_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> A
			note = Note__new(.A, root.alteration)
		case .D:
			// D -> B
			note = Note__new(.B, root.alteration)
		case .E:
			// E -> C#
			note = Note__new(.C, root.alteration + 1)
		case .F:
			// F -> D
			note = Note__new(.D, root.alteration)
		case .G:
			// G -> E
			note = Note__new(.E, root.alteration)
		case .A:
			// A -> F#
			note = Note__new(.F, root.alteration + 1)
		case .B:
			// B -> G#
			note = Note__new(.G, root.alteration + 1)
	}

	return note
}

@(private="file")
Note__seven_flat_from_root :: proc(root: Note) -> Note {
	note := Note__seven_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
Note__seven_from_root :: proc(root: Note) -> Note {
	note: Note

	switch root.letter {
		case .C:
			// C -> B
			note = Note__new(.B, root.alteration)
		case .D:
			// D -> C#
			note = Note__new(.C, root.alteration + 1)
		case .E:
			// E -> D#
			note = Note__new(.D, root.alteration + 1)
		case .F:
			// F -> E
			note = Note__new(.E, root.alteration)
		case .G:
			// G -> F#
			note = Note__new(.F, root.alteration + 1)
		case .A:
			// A -> G#
			note = Note__new(.G, root.alteration + 1)
		case .B:
			// B -> A#
			note = Note__new(.A, root.alteration + 1)
	}

	return note
}

@(private="file")
Note__eight_from_root :: proc(root: Note) -> Note {
	return Note__one_from_root(root)
}

@(private="file")
Note__nine_flat_from_root :: proc(root: Note) -> Note {
	return Note__two_flat_from_root(root)
}

@(private="file")
Note__nine_from_root :: proc(root: Note) -> Note {
	return Note__two_from_root(root)
}

@(private="file")
Note__nine_sharp_from_root :: proc(root: Note) -> Note {
	note := Note__two_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
Note__eleven_from_root :: proc(root: Note) -> Note {
	return Note__four_from_root(root)
}

@(private="file")
Note__eleven_sharp_from_root :: proc(root: Note) -> Note {
	return Note__four_sharp_from_root(root)
}

@(private="file")
Note__thirteen_flat_from_root :: proc(root: Note) -> Note {
	return Note__six_flat_from_root(root)
}

@(private="file")
Note__thirteen_from_root :: proc(root: Note) -> Note {
	return Note__six_from_root(root)
}
