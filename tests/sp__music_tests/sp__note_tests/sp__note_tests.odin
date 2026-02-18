package sp__note_tests

import "core:fmt"
import "core:testing"

import "sp__music:sp__letter"
import "sp__music:sp__note"
import "sp__music:sp__scale_degree"

// START - Display Name Tests
@(test)
display_name_B :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.B)

	display_name := sp__note.display_name(&note)
	defer delete(display_name)

	testing.expect(t, display_name == "B", fmt.tprintf("\"%s\" != \"B\"", display_name))
}

@(test)
display_name_Cbb :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.C, -2)

	display_name := sp__note.display_name(&note)
	defer delete(display_name)

	testing.expect(t, display_name == "C♭♭", fmt.tprintf("\"%s\" != \"C♭♭\"", display_name))
}

@(test)
display_name_Gsss :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.G, 3)

	display_name := sp__note.display_name(&note)
	defer delete(display_name)

	testing.expect(t, display_name == "G♯♯♯", fmt.tprintf("\"%s\" != \"G♯♯♯\"", display_name))
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
keyboard_friendly_name_F :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.F)

	keyboard_friendly_name := sp__note.keyboard_friendly_name(&note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "f", fmt.tprintf("\"%s\" != \"f\"", keyboard_friendly_name))
}

@(test)
keyboard_friendly_name_Ebbb :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.E, -3)

	keyboard_friendly_name := sp__note.keyboard_friendly_name(&note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "ebbb", fmt.tprintf("\"%s\" != \"ebbb\"", keyboard_friendly_name))
}

@(test)
keyboard_friendly_name_Bss :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.B, 2)

	keyboard_friendly_name := sp__note.keyboard_friendly_name(&note)
	defer delete(keyboard_friendly_name)

	testing.expect(t, keyboard_friendly_name == "bss", fmt.tprintf("\"%s\" != \"bss\"", keyboard_friendly_name))
}
// END - Keyboard Friendly Name Tests

// START - Constructors
@(test)
new_A :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.A)

	testing.expect(t, note.letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, note.alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
new_Gbbbb :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.G, -4)

	testing.expect(t, note.letter == sp__letter.Letter.G, "\"A\" != \"A\"")
	testing.expect(t, note.alteration == -4, "\"bbbb\" != \"bbbb\"")
}

@(test)
new_Fsssss :: proc(t: ^testing.T) {
	note := sp__note.new(sp__letter.Letter.F, 5)

	testing.expect(t, note.letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, note.alteration == 5, "\"sssss\" != \"sssss\"")
}

@(test)
from_root__CIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.C)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// C
	testing.expect(t, notes[0].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[1].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[2].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// F
	testing.expect(t, notes[3].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// G
	testing.expect(t, notes[4].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[5].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[6].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[6].alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
from_root__DIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.D)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// D
	testing.expect(t, notes[0].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[1].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[2].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// G
	testing.expect(t, notes[3].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[4].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[5].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[6].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
from_root__EIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.E)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// E
	testing.expect(t, notes[0].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[1].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[1].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[2].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// A
	testing.expect(t, notes[3].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[4].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[5].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// D#
	testing.expect(t, notes[6].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
from_root__FIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.F)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// F
	testing.expect(t, notes[0].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// G
	testing.expect(t, notes[1].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[2].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// Bb
	testing.expect(t, notes[3].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[3].alteration == -1, "\"b\" != \"b\"")
	// C
	testing.expect(t, notes[4].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[5].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[6].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[6].alteration == 0, "\"natural\" != \"natural\"")
}

@(test)
from_root__GIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.G)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// G
	testing.expect(t, notes[0].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// A
	testing.expect(t, notes[1].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[2].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[2].alteration == 0, "\"natural\" != \"natural\"")
	// C
	testing.expect(t, notes[3].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// D
	testing.expect(t, notes[4].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[5].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[5].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[6].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}

@(test)
from_root__AIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.A)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// A
	testing.expect(t, notes[0].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// B
	testing.expect(t, notes[1].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[1].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[2].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// D
	testing.expect(t, notes[3].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// E
	testing.expect(t, notes[4].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[4].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[5].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[6].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[6].alteration == 1, "\"natural\" != \"natural\"")
}

@(test)
from_root__BIonian :: proc(t: ^testing.T) {
	root := sp__note.new(sp__letter.Letter.B)

	notes := [7]sp__note.Note {
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.One),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Two),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Three),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Four),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Five),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Six),
		sp__note.from_root(&root, sp__scale_degree.ScaleDegree.Seven),
	}

	// B
	testing.expect(t, notes[0].letter == sp__letter.Letter.B, "\"B\" != \"B\"")
	testing.expect(t, notes[0].alteration == 0, "\"natural\" != \"natural\"")
	// C#
	testing.expect(t, notes[1].letter == sp__letter.Letter.C, "\"C\" != \"C\"")
	testing.expect(t, notes[1].alteration == 1, "\"s\" != \"s\"")
	// D#
	testing.expect(t, notes[2].letter == sp__letter.Letter.D, "\"D\" != \"D\"")
	testing.expect(t, notes[2].alteration == 1, "\"s\" != \"s\"")
	// E
	testing.expect(t, notes[3].letter == sp__letter.Letter.E, "\"E\" != \"E\"")
	testing.expect(t, notes[3].alteration == 0, "\"natural\" != \"natural\"")
	// F#
	testing.expect(t, notes[4].letter == sp__letter.Letter.F, "\"F\" != \"F\"")
	testing.expect(t, notes[4].alteration == 1, "\"s\" != \"s\"")
	// G#
	testing.expect(t, notes[5].letter == sp__letter.Letter.G, "\"G\" != \"G\"")
	testing.expect(t, notes[5].alteration == 1, "\"s\" != \"s\"")
	// A#
	testing.expect(t, notes[6].letter == sp__letter.Letter.A, "\"A\" != \"A\"")
	testing.expect(t, notes[6].alteration == 1, "\"s\" != \"s\"")
}
// END - Costructors
