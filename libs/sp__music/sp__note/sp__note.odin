package sp__note

import "core:strings"

import "sp__music:sp__letter"
import "sp__music:sp__modifier"
import "sp__music:sp__scale_degree"

Note :: struct {
	letter: sp__letter.Letter,
	alteration: int, // -ve -> flat | 0 -> neutral | +ve -> sharp
}

new :: proc(letter: sp__letter.Letter, alteration := 0) -> Note {
	return Note { letter, alteration }
}

from_root :: proc(root: ^Note, scale_degree: sp__scale_degree.ScaleDegree) -> Note {
	note: Note

	switch scale_degree {
		case sp__scale_degree.ScaleDegree.One:
			note = one_from_root(root)
		case sp__scale_degree.ScaleDegree.TwoFlat:
			note = two_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Two:
			note = two_from_root(root)
		case sp__scale_degree.ScaleDegree.ThreeFlat:
			note = three_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Three:
			note = three_from_root(root)
		case sp__scale_degree.ScaleDegree.Four:
			note = four_from_root(root)
		case sp__scale_degree.ScaleDegree.FourSharp:
			note = four_sharp_from_root(root)
		case sp__scale_degree.ScaleDegree.FiveFlat:
			note = five_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Five:
			note = five_from_root(root)
		case sp__scale_degree.ScaleDegree.FiveSharp:
			note = five_sharp_from_root(root)
		case sp__scale_degree.ScaleDegree.SixFlat:
			note = six_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Six:
			note = six_from_root(root)
		case sp__scale_degree.ScaleDegree.SevenFlat:
			note = seven_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Seven:
			note = seven_from_root(root)
		case sp__scale_degree.ScaleDegree.Eight:
			note = eight_from_root(root)
		case sp__scale_degree.ScaleDegree.NineFlat:
			note = nine_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Nine:
			note = nine_from_root(root)
		case sp__scale_degree.ScaleDegree.NineSharp:
			note = nine_sharp_from_root(root)
		case sp__scale_degree.ScaleDegree.Eleven:
			note = eleven_from_root(root)
		case sp__scale_degree.ScaleDegree.ElevenSharp:
			note = eleven_sharp_from_root(root)
		case sp__scale_degree.ScaleDegree.ThirteenFlat:
			note = thirteen_flat_from_root(root)
		case sp__scale_degree.ScaleDegree.Thirteen:
			note = thirteen_from_root(root)
	}

	return note
}

display_name :: proc(note: ^Note, allocator := context.allocator) -> string {
	b := strings.builder_make(context.temp_allocator)

	strings.write_string(&b, sp__letter.display_name(note^.letter)^)

	if note^.alteration < 0 {
		for _ in note^.alteration..=-1 do strings.write_string(&b, sp__modifier.display_name(sp__modifier.Modifier.Flat)^)
	} else if note^.alteration > 0 {
		for _ in 1..=note^.alteration do strings.write_string(&b, sp__modifier.display_name(sp__modifier.Modifier.Sharp)^)
	}

	display_name := strings.clone(strings.to_string(b), allocator)

	return display_name
}

keyboard_friendly_name :: proc(note: ^Note, allocator := context.allocator) -> string {
	b := strings.builder_make(context.temp_allocator)

	strings.write_string(&b, sp__letter.keyboard_friendly_name(note^.letter)^)

	if note^.alteration < 0 {
		for _ in note^.alteration..=-1 do strings.write_string(&b, sp__modifier.keyboard_friendly_name(sp__modifier.Modifier.Flat)^)
	} else if note^.alteration > 0 {
		for _ in 1..=note^.alteration do strings.write_string(&b, sp__modifier.keyboard_friendly_name(sp__modifier.Modifier.Sharp)^)
	}

	keyboard_friendly_name := strings.clone(strings.to_string(b), allocator)

	return keyboard_friendly_name
}

@(private="file")
one_from_root :: proc(root: ^Note) -> Note {
	return new(root^.letter, root^.alteration)
}

@(private="file")
two_flat_from_root :: proc(root: ^Note) -> Note {
	note := two_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
two_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> D
			note = new(sp__letter.Letter.D, root^.alteration)
		case sp__letter.Letter.D:
			// D -> E
			note = new(sp__letter.Letter.E, root^.alteration)
		case sp__letter.Letter.E:
			// E -> F#
			note = new(sp__letter.Letter.F, root^.alteration + 1)
		case sp__letter.Letter.F:
			// F -> G
			note = new(sp__letter.Letter.G, root^.alteration)
		case sp__letter.Letter.G:
			// G -> A
			note = new(sp__letter.Letter.A, root^.alteration)
		case sp__letter.Letter.A:
			// A -> B
			note = new(sp__letter.Letter.B, root^.alteration)
		case sp__letter.Letter.B:
			// B -> C#
			note = new(sp__letter.Letter.C, root^.alteration + 1)
	}

	return note
}

@(private="file")
three_flat_from_root :: proc(root: ^Note) -> Note {
	note := three_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
three_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> E
			note = new(sp__letter.Letter.E, root^.alteration)
		case sp__letter.Letter.D:
			// D -> F#
			note = new(sp__letter.Letter.F, root^.alteration + 1)
		case sp__letter.Letter.E:
			// E -> G#
			note = new(sp__letter.Letter.G, root^.alteration + 1)
		case sp__letter.Letter.F:
			// F -> A
			note = new(sp__letter.Letter.A, root^.alteration)
		case sp__letter.Letter.G:
			// G -> B
			note = new(sp__letter.Letter.B, root^.alteration)
		case sp__letter.Letter.A:
			// A -> C#
			note = new(sp__letter.Letter.C, root^.alteration + 1)
		case sp__letter.Letter.B:
			// B -> D#
			note = new(sp__letter.Letter.D, root^.alteration + 1)
	}

	return note
}

@(private="file")
four_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> F
			note = new(sp__letter.Letter.F, root^.alteration)
		case sp__letter.Letter.D:
			// D -> G
			note = new(sp__letter.Letter.G, root^.alteration)
		case sp__letter.Letter.E:
			// E -> A
			note = new(sp__letter.Letter.A, root^.alteration)
		case sp__letter.Letter.F:
			// F -> Bb
			note = new(sp__letter.Letter.B, root^.alteration - 1)
		case sp__letter.Letter.G:
			// G -> C
			note = new(sp__letter.Letter.C, root^.alteration)
		case sp__letter.Letter.A:
			// A -> D
			note = new(sp__letter.Letter.D, root^.alteration)
		case sp__letter.Letter.B:
			// B -> E
			note = new(sp__letter.Letter.E, root^.alteration)
	}

	return note
}

@(private="file")
four_sharp_from_root :: proc(root: ^Note) -> Note {
	note := four_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
five_flat_from_root :: proc(root: ^Note) -> Note {
	note := five_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
five_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> G
			note = new(sp__letter.Letter.G, root^.alteration)
		case sp__letter.Letter.D:
			// D -> A
			note = new(sp__letter.Letter.A, root^.alteration)
		case sp__letter.Letter.E:
			// E -> B
			note = new(sp__letter.Letter.B, root^.alteration)
		case sp__letter.Letter.F:
			// F -> C
			note = new(sp__letter.Letter.C, root^.alteration)
		case sp__letter.Letter.G:
			// G -> D
			note = new(sp__letter.Letter.D, root^.alteration)
		case sp__letter.Letter.A:
			// A -> E
			note = new(sp__letter.Letter.E, root^.alteration)
		case sp__letter.Letter.B:
			// B -> F#
			note = new(sp__letter.Letter.F, root^.alteration + 1)
	}

	return note
}

@(private="file")
five_sharp_from_root :: proc(root: ^Note) -> Note {
	note := five_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
six_flat_from_root :: proc(root: ^Note) -> Note {
	note := six_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
six_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> A
			note = new(sp__letter.Letter.A, root^.alteration)
		case sp__letter.Letter.D:
			// D -> B
			note = new(sp__letter.Letter.B, root^.alteration)
		case sp__letter.Letter.E:
			// E -> C#
			note = new(sp__letter.Letter.C, root^.alteration + 1)
		case sp__letter.Letter.F:
			// F -> D
			note = new(sp__letter.Letter.D, root^.alteration)
		case sp__letter.Letter.G:
			// G -> E
			note = new(sp__letter.Letter.E, root^.alteration)
		case sp__letter.Letter.A:
			// A -> F#
			note = new(sp__letter.Letter.F, root^.alteration + 1)
		case sp__letter.Letter.B:
			// B -> G#
			note = new(sp__letter.Letter.G, root^.alteration + 1)
	}

	return note
}

@(private="file")
seven_flat_from_root :: proc(root: ^Note) -> Note {
	note := seven_from_root(root)

	note.alteration -= 1

	return note
}

@(private="file")
seven_from_root :: proc(root: ^Note) -> Note {
	note: Note

	switch root^.letter {
		case sp__letter.Letter.C:
			// C -> B
			note = new(sp__letter.Letter.B, root^.alteration)
		case sp__letter.Letter.D:
			// D -> C#
			note = new(sp__letter.Letter.C, root^.alteration + 1)
		case sp__letter.Letter.E:
			// E -> D#
			note = new(sp__letter.Letter.D, root^.alteration + 1)
		case sp__letter.Letter.F:
			// F -> E
			note = new(sp__letter.Letter.E, root^.alteration)
		case sp__letter.Letter.G:
			// G -> F#
			note = new(sp__letter.Letter.F, root^.alteration + 1)
		case sp__letter.Letter.A:
			// A -> G#
			note = new(sp__letter.Letter.G, root^.alteration + 1)
		case sp__letter.Letter.B:
			// B -> A#
			note = new(sp__letter.Letter.A, root^.alteration + 1)
	}

	return note
}

@(private="file")
eight_from_root :: proc(root: ^Note) -> Note {
	return one_from_root(root)
}

@(private="file")
nine_flat_from_root :: proc(root: ^Note) -> Note {
	return two_flat_from_root(root)
}

@(private="file")
nine_from_root :: proc(root: ^Note) -> Note {
	return two_from_root(root)
}

@(private="file")
nine_sharp_from_root :: proc(root: ^Note) -> Note {
	note := two_from_root(root)

	note.alteration += 1

	return note
}

@(private="file")
eleven_from_root :: proc(root: ^Note) -> Note {
	return four_from_root(root)
}

@(private="file")
eleven_sharp_from_root :: proc(root: ^Note) -> Note {
	return four_sharp_from_root(root)
}

@(private="file")
thirteen_flat_from_root :: proc(root: ^Note) -> Note {
	return six_flat_from_root(root)
}

@(private="file")
thirteen_from_root :: proc(root: ^Note) -> Note {
	return six_from_root(root)
}
