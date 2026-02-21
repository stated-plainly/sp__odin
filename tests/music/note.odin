package sp__music_tests

import "core:fmt"
import "core:testing"

import "../../libs/music"
import "../../libs/numbers"

// START - Display Name Tests
@(test)
test__Note__display_name__B :: proc(t: ^testing.T) {
	note := music.Note__new(.B)

	display_name := music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "B")
}

@(test)
test__Note__display_name__Cbb :: proc(t: ^testing.T) {
	note := music.Note__new(.C, -2)

	display_name := music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "C♭♭")
}

@(test)
test__Note__display_name__Gsss :: proc(t: ^testing.T) {
	note := music.Note__new(.G, 3)

	display_name := music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "G♯♯♯")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Note__keyboard_friendly_name__F :: proc(t: ^testing.T) {
	note := music.Note__new(.F)

	keyboard_friendly_name := music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "f")
}

@(test)
test__Note__keyboard_friendly_name__Ebbb :: proc(t: ^testing.T) {
	note := music.Note__new(.E, -3)

	keyboard_friendly_name := music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "ebbb")
}

@(test)
test__Note__keyboard_friendly_name__Bss :: proc(t: ^testing.T) {
	note := music.Note__new(.B, 2)

	keyboard_friendly_name := music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "bss")
}
// END - Keyboard Friendly Name Tests
// START - Constructors
// start - Note__new
@(test)
test__Note__new__A :: proc(t: ^testing.T) {
	note := music.Note__new(.A)

	testing.expect(t, note.letter == .A)
	testing.expect(t, note.alteration == 0)
}

@(test)
test__Note__new__Gbbbb :: proc(t: ^testing.T) {
	note := music.Note__new(.G, -4)

	testing.expect(t, note.letter == .G)
	testing.expect(t, note.alteration == -4)
}

@(test)
test__Note__new__Fsssss :: proc(t: ^testing.T) {
	note := music.Note__new(.F, 5)

	testing.expect(t, note.letter == .F)
	testing.expect(t, note.alteration == 5)
}
// end - Note__new
// start - Note__random_diatonic_root
@(test)
test__Note__random_diatonic_root :: proc(t: ^testing.T) {
	for i in 0..=100 {
		random_diatonic_root := music.Note__random_diatonic_root()

		testing.expect(t,  numbers.value_in_range(random_diatonic_root.alteration, -1, 1))
	}
}
// end - Note__random_diatonic_root
// start - Note__from_root
@(test)
test__Note__from_root__CIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.C)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// C
	testing.expect(t, notes[0].letter == .C)
	testing.expect(t, notes[0].alteration == 0)
	// D
	testing.expect(t, notes[1].letter == .D)
	testing.expect(t, notes[1].alteration == 0)
	// E
	testing.expect(t, notes[2].letter == .E)
	testing.expect(t, notes[2].alteration == 0)
	// F
	testing.expect(t, notes[3].letter == .F)
	testing.expect(t, notes[3].alteration == 0)
	// G
	testing.expect(t, notes[4].letter == .G)
	testing.expect(t, notes[4].alteration == 0)
	// A
	testing.expect(t, notes[5].letter == .A)
	testing.expect(t, notes[5].alteration == 0)
	// B
	testing.expect(t, notes[6].letter == .B)
	testing.expect(t, notes[6].alteration == 0)
}

@(test)
test__Note__from_root__DIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.D)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// D
	testing.expect(t, notes[0].letter == .D)
	testing.expect(t, notes[0].alteration == 0)
	// E
	testing.expect(t, notes[1].letter == .E)
	testing.expect(t, notes[1].alteration == 0)
	// F#
	testing.expect(t, notes[2].letter == .F)
	testing.expect(t, notes[2].alteration == 1)
	// G
	testing.expect(t, notes[3].letter == .G)
	testing.expect(t, notes[3].alteration == 0)
	// A
	testing.expect(t, notes[4].letter == .A)
	testing.expect(t, notes[4].alteration == 0)
	// B
	testing.expect(t, notes[5].letter == .B)
	testing.expect(t, notes[5].alteration == 0)
	// C#
	testing.expect(t, notes[6].letter == .C)
	testing.expect(t, notes[6].alteration == 1)
}

@(test)
test__Note__from_root__EIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.E)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// E
	testing.expect(t, notes[0].letter == .E)
	testing.expect(t, notes[0].alteration == 0)
	// F#
	testing.expect(t, notes[1].letter == .F)
	testing.expect(t, notes[1].alteration == 1)
	// G#
	testing.expect(t, notes[2].letter == .G)
	testing.expect(t, notes[2].alteration == 1)
	// A
	testing.expect(t, notes[3].letter == .A)
	testing.expect(t, notes[3].alteration == 0)
	// B
	testing.expect(t, notes[4].letter == .B)
	testing.expect(t, notes[4].alteration == 0)
	// C#
	testing.expect(t, notes[5].letter == .C)
	testing.expect(t, notes[5].alteration == 1)
	// D#
	testing.expect(t, notes[6].letter == .D)
	testing.expect(t, notes[6].alteration == 1)
}

@(test)
test__Note__from_root__FIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.F)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// F
	testing.expect(t, notes[0].letter == .F)
	testing.expect(t, notes[0].alteration == 0)
	// G
	testing.expect(t, notes[1].letter == .G)
	testing.expect(t, notes[1].alteration == 0)
	// A
	testing.expect(t, notes[2].letter == .A)
	testing.expect(t, notes[2].alteration == 0)
	// Bb
	testing.expect(t, notes[3].letter == .B)
	testing.expect(t, notes[3].alteration == -1)
	// C
	testing.expect(t, notes[4].letter == .C)
	testing.expect(t, notes[4].alteration == 0)
	// D
	testing.expect(t, notes[5].letter == .D)
	testing.expect(t, notes[5].alteration == 0)
	// E
	testing.expect(t, notes[6].letter == .E)
	testing.expect(t, notes[6].alteration == 0)
}

@(test)
test__Note__from_root__GIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.G)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// G
	testing.expect(t, notes[0].letter == .G)
	testing.expect(t, notes[0].alteration == 0)
	// A
	testing.expect(t, notes[1].letter == .A)
	testing.expect(t, notes[1].alteration == 0)
	// B
	testing.expect(t, notes[2].letter == .B)
	testing.expect(t, notes[2].alteration == 0)
	// C
	testing.expect(t, notes[3].letter == .C)
	testing.expect(t, notes[3].alteration == 0)
	// D
	testing.expect(t, notes[4].letter == .D)
	testing.expect(t, notes[4].alteration == 0)
	// E
	testing.expect(t, notes[5].letter == .E)
	testing.expect(t, notes[5].alteration == 0)
	// F#
	testing.expect(t, notes[6].letter == .F)
	testing.expect(t, notes[6].alteration == 1)
}

@(test)
test__Note__from_root__AIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.A)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// A
	testing.expect(t, notes[0].letter == .A)
	testing.expect(t, notes[0].alteration == 0)
	// B
	testing.expect(t, notes[1].letter == .B)
	testing.expect(t, notes[1].alteration == 0)
	// C#
	testing.expect(t, notes[2].letter == .C)
	testing.expect(t, notes[2].alteration == 1)
	// D
	testing.expect(t, notes[3].letter == .D)
	testing.expect(t, notes[3].alteration == 0)
	// E
	testing.expect(t, notes[4].letter == .E)
	testing.expect(t, notes[4].alteration == 0)
	// F#
	testing.expect(t, notes[5].letter == .F)
	testing.expect(t, notes[5].alteration == 1)
	// G#
	testing.expect(t, notes[6].letter == .G)
	testing.expect(t, notes[6].alteration == 1)
}

@(test)
test__Note__from_root__BIonian :: proc(t: ^testing.T) {
	root := music.Note__new(.B)

	notes := [7]music.Note {
		music.Note__from_root(root, .One),
		music.Note__from_root(root, .Two),
		music.Note__from_root(root, .Three),
		music.Note__from_root(root, .Four),
		music.Note__from_root(root, .Five),
		music.Note__from_root(root, .Six),
		music.Note__from_root(root, .Seven),
	}

	// B
	testing.expect(t, notes[0].letter == .B)
	testing.expect(t, notes[0].alteration == 0)
	// C#
	testing.expect(t, notes[1].letter == .C)
	testing.expect(t, notes[1].alteration == 1)
	// D#
	testing.expect(t, notes[2].letter == .D)
	testing.expect(t, notes[2].alteration == 1)
	// E
	testing.expect(t, notes[3].letter == .E)
	testing.expect(t, notes[3].alteration == 0)
	// F#
	testing.expect(t, notes[4].letter == .F)
	testing.expect(t, notes[4].alteration == 1)
	// G#
	testing.expect(t, notes[5].letter == .G)
	testing.expect(t, notes[5].alteration == 1)
	// A#
	testing.expect(t, notes[6].letter == .A)
	testing.expect(t, notes[6].alteration == 1)
}
// end - Note__from_root
// END - Costructors
