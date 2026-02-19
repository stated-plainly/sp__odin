package sp__music_tests

import "core:fmt"
import "core:testing"

import "../../libs/sp__music"

// START - Display Name Tests
@(test)
test__Note__display_name__B :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.B)

	display_name := sp__music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "B", fmt.tprintf("\"%s\" != \"B\"", display_name))
}

@(test)
test__Note__display_name__Cbb :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.C, -2)

	display_name := sp__music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "C♭♭", fmt.tprintf("\"%s\" != \"C♭♭\"", display_name))
}

@(test)
test__Note__display_name__Gsss :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.G, 3)

	display_name := sp__music.Note__display_name(note)
	defer delete(display_name)

	testing.expect(t, display_name == "G♯♯♯", fmt.tprintf("\"%s\" != \"G♯♯♯\"", display_name))
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Note__keyboard_friendly_name__F :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.F)

	keyboard_friendly_name := sp__music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "f", fmt.tprintf("\"%s\" != \"f\"", keyboard_friendly_name))
}

@(test)
test__Note__keyboard_friendly_name__Ebbb :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.E, -3)

	keyboard_friendly_name := sp__music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "ebbb", fmt.tprintf("\"%s\" != \"ebbb\"", keyboard_friendly_name))
}

@(test)
test__Note__keyboard_friendly_name__Bss :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.B, 2)

	keyboard_friendly_name := sp__music.Note__keyboard_friendly_name(note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "bss", fmt.tprintf("\"%s\" != \"bss\"", keyboard_friendly_name))
}
// END - Keyboard Friendly Name Tests
// START - Constructors
@(test)
test__Note__new__A :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.A)

	testing.expect(t, note.letter == .A, "\"A\" != \"A\"")
	testing.expect(t, note.alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
test__Note__new__Gbbbb :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.G, -4)

	testing.expect(t, note.letter == .G, "\"A\" != \"A\"")
	testing.expect(t, note.alteration == -4, "\"bbbb\" != \"bbbb\"")
}

@(test)
test__Note__new__Fsssss :: proc(t: ^testing.T) {
	note := sp__music.Note__new(.F, 5)

	testing.expect(t, note.letter == .F, "\"F\" != \"F\"")
	testing.expect(t, note.alteration == 5, "\"sssss\" != \"sssss\"")
}

@(test)
test__Note__from_root__CIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.C)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// C
	testing.expect(t, notes[0].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[1].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[2].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// F
	testing.expect(t, notes[3].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// G
	testing.expect(t, notes[4].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[5].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[6].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[6].alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
test__Note__from_root__DIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.D)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// D
	testing.expect(t, notes[0].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[1].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[2].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// G
	testing.expect(t, notes[3].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[4].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[5].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[6].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
test__Note__from_root__EIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.E)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// E
	testing.expect(t, notes[0].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[1].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[1].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[2].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// A
	testing.expect(t, notes[3].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[4].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[5].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// D#
	testing.expect(t, notes[6].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
test__Note__from_root__FIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.F)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// F
	testing.expect(t, notes[0].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// G
	testing.expect(t, notes[1].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[2].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// Bb
	testing.expect(t, notes[3].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[3].alteration == -1, "\"b\" != \"b\"")
	// C
	testing.expect(t, notes[4].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[5].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[6].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[6].alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
test__Note__from_root__GIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.G)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// G
	testing.expect(t, notes[0].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[1].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[2].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// C
	testing.expect(t, notes[3].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[4].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[5].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[6].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
test__Note__from_root__AIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.A)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// A
	testing.expect(t, notes[0].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[1].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[2].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// D
	testing.expect(t, notes[3].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[4].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[5].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[6].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[6].alteration == 1, "\"natural\" != \"natural\"")
}

@(test)
test__Note__from_root__BIonian :: proc(t: ^testing.T) {
	root := sp__music.Note__new(.B)

	notes := [7]sp__music.Note {
		sp__music.Note__from_root(root, .One),
		sp__music.Note__from_root(root, .Two),
		sp__music.Note__from_root(root, .Three),
		sp__music.Note__from_root(root, .Four),
		sp__music.Note__from_root(root, .Five),
		sp__music.Note__from_root(root, .Six),
		sp__music.Note__from_root(root, .Seven),
	}

	// B
	testing.expect(t, notes[0].letter == .B, "\"B\" != \"B\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[1].letter == .C, "\"C\" != \"C\"")
	testing.expect(t, notes[1].alteration == 1, "\"s\" != \"s\"")
	// D#
	testing.expect(t, notes[2].letter == .D, "\"D\" != \"D\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// E
	testing.expect(t, notes[3].letter == .E, "\"E\" != \"E\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[4].letter == .F, "\"F\" != \"F\"")
	testing.expect(t, notes[4].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[5].letter == .G, "\"G\" != \"G\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// A#
	testing.expect(t, notes[6].letter == .A, "\"A\" != \"A\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}
// END - Costructors
