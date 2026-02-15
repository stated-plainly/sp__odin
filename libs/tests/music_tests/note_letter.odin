package music_tests

import "core:testing"
import "../../music"

// START - Display Name Tests
@(test)
NoteLetter_display_name_C :: proc(t: ^testing.T) {
	c := music.NoteLetter.C;

	testing.expect(t, music.NoteLetter_display_name(c)^ == "C", "NoteLetter.C's display_name failed to equal \"C\"")
}

@(test)
NoteLetter_display_name_D :: proc(t: ^testing.T) {
	d := music.NoteLetter.D;

	testing.expect(t, music.NoteLetter_display_name(d)^ == "D", "NoteLetter.D's display_name failed to equal \"D\"")
}

@(test)
NoteLetter_display_name_E :: proc(t: ^testing.T) {
	e := music.NoteLetter.E;

	testing.expect(t, music.NoteLetter_display_name(e)^ == "E", "NoteLetter.E's display_name failed to equal \"E\"")
}

@(test)
NoteLetter_display_name_F :: proc(t: ^testing.T) {
	f := music.NoteLetter.F;

	testing.expect(t, music.NoteLetter_display_name(f)^ == "F", "NoteLetter.F's display_name failed to equal \"F\"")
}

@(test)
NoteLetter_display_name_G :: proc(t: ^testing.T) {
	g := music.NoteLetter.G;

	testing.expect(t, music.NoteLetter_display_name(g)^ == "G", "NoteLetter.G's display_name failed to equal \"G\"")
}

@(test)
NoteLetter_display_name_A :: proc(t: ^testing.T) {
	a := music.NoteLetter.A;

	testing.expect(t, music.NoteLetter_display_name(a)^ == "A", "NoteLetter.A's display_name failed to equal \"A\"")
}

@(test)
NoteLetter_display_name_B :: proc(t: ^testing.T) {
	b := music.NoteLetter.B;

	testing.expect(t, music.NoteLetter_display_name(b)^ == "B", "NoteLetter.B's display_name failed to equal \"B\"")
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
NoteLetter_keyboard_friendly_name_C :: proc(t: ^testing.T) {
	c := music.NoteLetter.C;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(c)^ == "c", "NoteLetter.C's keyboard_friendly_name failed to equal \"c\"")
}

@(test)
NoteLetter_keyboard_friendly_name_D :: proc(t: ^testing.T) {
	d := music.NoteLetter.D;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(d)^ == "d", "NoteLetter.D's keyboard_friendly_name failed to equal \"d\"")
}

@(test)
NoteLetter_keyboard_friendly_name_E :: proc(t: ^testing.T) {
	e := music.NoteLetter.E;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(e)^ == "e", "NoteLetter.E's keyboard_friendly_name failed to equal \"e\"")
}

@(test)
NoteLetter_keyboard_friendly_name_F :: proc(t: ^testing.T) {
	f := music.NoteLetter.F;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(f)^ == "f", "NoteLetter.F's keyboard_friendly_name failed to equal \"f\"")
}

@(test)
NoteLetter_keyboard_friendly_name_G :: proc(t: ^testing.T) {
	g := music.NoteLetter.G;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(g)^ == "g", "NoteLetter.G's keyboard_friendly_name failed to equal \"g\"")
}

@(test)
NoteLetter_keyboard_friendly_name_A :: proc(t: ^testing.T) {
	a := music.NoteLetter.A;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(a)^ == "a", "NoteLetter.A's keyboard_friendly_name failed to equal \"a\"")
}

@(test)
NoteLetter_keyboard_friendly_name_B :: proc(t: ^testing.T) {
	b := music.NoteLetter.B;

	testing.expect(t, music.NoteLetter_keyboard_friendly_name(b)^ == "b", "NoteLetter.B's keyboard_friendly_name failed to equal \"b\"")
}
// END - Keyboard Friendly Name Tests
