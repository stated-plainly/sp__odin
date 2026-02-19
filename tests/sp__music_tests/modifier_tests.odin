package sp__music_tests

import "core:testing"

import "../../libs/sp__music"

// START - Display Name Tests
@(test)
test__Modifier__display_name__Flat :: proc(t: ^testing.T) {
	flat := sp__music.Modifier.Flat

	testing.expect(t, sp__music.Modifier__display_name(flat) == "♭", "NoteModifier.Flat's display_name failed to equal \"♭\"")
}

@(test)
test__Modifier__display_name__Sharp :: proc(t: ^testing.T) {
	sharp := sp__music.Modifier.Sharp

	testing.expect(t, sp__music.Modifier__display_name(sharp) == "♯", "NoteModifier.Sharp's display_name failed to equal \"♯\"")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Modifier__keyboard_friendly_name__Flat :: proc(t: ^testing.T) {
	flat := sp__music.Modifier.Flat

	testing.expect(t, sp__music.Modifier__keyboard_friendly_name(flat) == "b", "NoteModifier.Flat's keyboard_friendly_name failed to equal \"b\"")
}

@(test)
test__Modifier__keyboard_friendly_name__Sharp :: proc(t: ^testing.T) {
	sharp := sp__music.Modifier.Sharp

	testing.expect(t, sp__music.Modifier__keyboard_friendly_name(sharp) == "s", "NoteModifier.Sharp's keyboard_friendly_name failed to equal \"s\"")
}
// END - Keyboard Friendly Name Tests
