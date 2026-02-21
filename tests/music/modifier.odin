package sp__music_tests

import "core:testing"

import "../../libs/music"

// START - Display Name Tests
@(test)
test__Modifier__display_name__Flat :: proc(t: ^testing.T) {
	flat := music.Modifier.Flat

	testing.expect(t, music.Modifier__display_name(flat) == "♭")
}

@(test)
test__Modifier__display_name__Sharp :: proc(t: ^testing.T) {
	sharp := music.Modifier.Sharp

	testing.expect(t, music.Modifier__display_name(sharp) == "♯")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Modifier__keyboard_friendly_name__Flat :: proc(t: ^testing.T) {
	flat := music.Modifier.Flat

	testing.expect(t, music.Modifier__keyboard_friendly_name(flat) == "b")
}

@(test)
test__Modifier__keyboard_friendly_name__Sharp :: proc(t: ^testing.T) {
	sharp := music.Modifier.Sharp

	testing.expect(t, music.Modifier__keyboard_friendly_name(sharp) == "s")
}
// END - Keyboard Friendly Name Tests
