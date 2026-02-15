package music_tests

import "core:testing"
import "../../music"

// START - Display Name Tests
@(test)
NoteModifier_display_name_DoubleFlat :: proc(t: ^testing.T) {
	double_flat := music.NoteModifier.DoubleFlat;

	testing.expect(t, music.NoteModifier_display_name(double_flat)^ == "𝄫", "NoteModifier.DoubleFlat's display_name failed to equal \"𝄫\"")
}

@(test)
NoteModifier_display_name_Flat :: proc(t: ^testing.T) {
	flat := music.NoteModifier.Flat;

	testing.expect(t, music.NoteModifier_display_name(flat)^ == "♭", "NoteModifier.Flat's display_name failed to equal \"♭\"")
}

@(test)
NoteModifier_display_name_Natural :: proc(t: ^testing.T) {
	natural := music.NoteModifier.Natural;

	testing.expect(t, music.NoteModifier_display_name(natural)^ == "♮", "NoteModifier.Natural's display_name failed to equal \"♮\"")
}

@(test)
NoteModifier_display_name_Sharp :: proc(t: ^testing.T) {
	sharp := music.NoteModifier.Sharp;

	testing.expect(t, music.NoteModifier_display_name(sharp)^ == "♯", "NoteModifier.Sharp's display_name failed to equal \"♯\"")
}

@(test)
NoteModifier_display_name_DoubleSharp :: proc(t: ^testing.T) {
	double_sharp := music.NoteModifier.DoubleSharp;

	testing.expect(t, music.NoteModifier_display_name(double_sharp)^ == "𝄪", "NoteModifier.DoubleSharp's display_name failed to equal \"𝄪\"")
}

@(test)
NoteModifier_display_name_TripleSharp :: proc(t: ^testing.T) {
	triple_sharp := music.NoteModifier.TripleSharp;

	testing.expect(t, music.NoteModifier_display_name(triple_sharp)^ == "♯𝄪", "NoteModifier.TripleSharp's display_name failed to equal \"♯𝄪\"")
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
NoteModifier_keyboard_friendly_name_DoubleFlat :: proc(t: ^testing.T) {
	double_flat := music.NoteModifier.DoubleFlat;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(double_flat)^ == "bb", "NoteModifier.DoubleFlat's keyboard_friendly_name failed to equal \"bb\"")
}

@(test)
NoteModifier_keyboard_friendly_name_Flat :: proc(t: ^testing.T) {
	flat := music.NoteModifier.Flat;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(flat)^ == "b", "NoteModifier.Flat's keyboard_friendly_name failed to equal \"b\"")
}

@(test)
NoteModifier_keyboard_friendly_name_Natural :: proc(t: ^testing.T) {
	natural := music.NoteModifier.Natural;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(natural)^ == "", "NoteModifier.Natural's keyboard_friendly_name failed to equal \"\"")
}

@(test)
NoteModifier_keyboard_friendly_name_Sharp :: proc(t: ^testing.T) {
	sharp := music.NoteModifier.Sharp;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(sharp)^ == "s", "NoteModifier.Sharp's keyboard_friendly_name failed to equal \"s\"")
}

@(test)
NoteModifier_keyboard_friendly_name_DoubleSharp :: proc(t: ^testing.T) {
	double_sharp := music.NoteModifier.DoubleSharp;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(double_sharp)^ == "ss", "NoteModifier.DoubleSharp's keyboard_friendly_name failed to equal \"ss\"")
}

@(test)
NoteModifier_keyboard_friendly_name_TripleSharp :: proc(t: ^testing.T) {
	triple_sharp := music.NoteModifier.TripleSharp;

	testing.expect(t, music.NoteModifier_keyboard_friendly_name(triple_sharp)^ == "sss", "NoteModifier.TripleSharp's keyboard_friendly_name failed to equal \"sss\"")
}
// END - Keyboard Friendly Name Tests
