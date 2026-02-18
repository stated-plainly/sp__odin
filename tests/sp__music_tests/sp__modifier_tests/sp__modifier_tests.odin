package sp__modifier_tests

import "core:testing"

import "sp__music:sp__modifier"

// START - Display Name Tests
@(test)
display_name_Flat :: proc(t: ^testing.T) {
	flat := sp__modifier.Modifier.Flat

	testing.expect(t, sp__modifier.display_name(flat)^ == "♭", "NoteModifier.Flat's display_name failed to equal \"♭\"")
}

@(test)
display_name_Sharp :: proc(t: ^testing.T) {
	sharp := sp__modifier.Modifier.Sharp

	testing.expect(t, sp__modifier.display_name(sharp)^ == "♯", "NoteModifier.Sharp's display_name failed to equal \"♯\"")
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
keyboard_friendly_name_Flat :: proc(t: ^testing.T) {
	flat := sp__modifier.Modifier.Flat

	testing.expect(t, sp__modifier.keyboard_friendly_name(flat)^ == "b", "NoteModifier.Flat's keyboard_friendly_name failed to equal \"b\"")
}

@(test)
keyboard_friendly_name_Sharp :: proc(t: ^testing.T) {
	sharp := sp__modifier.Modifier.Sharp

	testing.expect(t, sp__modifier.keyboard_friendly_name(sharp)^ == "s", "NoteModifier.Sharp's keyboard_friendly_name failed to equal \"s\"")
}
// END - Keyboard Friendly Name Tests
