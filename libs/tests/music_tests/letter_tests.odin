package music_tests

import "core:testing"

import "music:letter"

// START - Display Name Tests
@(test)
display_name_C :: proc(t: ^testing.T) {
	c := letter.Letter.C

	testing.expect(t, letter.display_name(c)^ == "C", "Letter.C's display_name != \"C\"")
}

@(test)
display_name_D :: proc(t: ^testing.T) {
	d := letter.Letter.D

	testing.expect(t, letter.display_name(d)^ == "D", "Letter.D's display_name != \"D\"")
}

@(test)
display_name_E :: proc(t: ^testing.T) {
	e := letter.Letter.E

	testing.expect(t, letter.display_name(e)^ == "E", "Letter.E's display_name != \"E\"")
}

@(test)
display_name_F :: proc(t: ^testing.T) {
	f := letter.Letter.F

	testing.expect(t, letter.display_name(f)^ == "F", "Letter.F's display_name != \"F\"")
}

@(test)
display_name_G :: proc(t: ^testing.T) {
	g := letter.Letter.G

	testing.expect(t, letter.display_name(g)^ == "G", "Letter.G's display_name != \"G\"")
}

@(test)
display_name_A :: proc(t: ^testing.T) {
	a := letter.Letter.A

	testing.expect(t, letter.display_name(a)^ == "A", "Letter.A's display_name != \"A\"")
}

@(test)
display_name_B :: proc(t: ^testing.T) {
	b := letter.Letter.B

	testing.expect(t, letter.display_name(b)^ == "B", "Letter.B's display_name != \"B\"")
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
keyboard_friendly_name_C :: proc(t: ^testing.T) {
	c := letter.Letter.C

	testing.expect(t, letter.keyboard_friendly_name(c)^ == "c", "Letter.C's keyboard_friendly_name != \"c\"")
}

@(test)
keyboard_friendly_name_D :: proc(t: ^testing.T) {
	d := letter.Letter.D

	testing.expect(t, letter.keyboard_friendly_name(d)^ == "d", "Letter.D's keyboard_friendly_name != \"d\"")
}

@(test)
keyboard_friendly_name_E :: proc(t: ^testing.T) {
	e := letter.Letter.E

	testing.expect(t, letter.keyboard_friendly_name(e)^ == "e", "Letter.E's keyboard_friendly_name != \"e\"")
}

@(test)
keyboard_friendly_name_F :: proc(t: ^testing.T) {
	f := letter.Letter.F

	testing.expect(t, letter.keyboard_friendly_name(f)^ == "f", "Letter.F's keyboard_friendly_name != \"f\"")
}

@(test)
keyboard_friendly_name_G :: proc(t: ^testing.T) {
	g := letter.Letter.G

	testing.expect(t, letter.keyboard_friendly_name(g)^ == "g", "Letter.G's keyboard_friendly_name != \"g\"")
}

@(test)
keyboard_friendly_name_A :: proc(t: ^testing.T) {
	a := letter.Letter.A

	testing.expect(t, letter.keyboard_friendly_name(a)^ == "a", "Letter.A's keyboard_friendly_name != \"a\"")
}

@(test)
keyboard_friendly_name_B :: proc(t: ^testing.T) {
	b := letter.Letter.B

	testing.expect(t, letter.keyboard_friendly_name(b)^ == "b", "Letter.B's keyboard_friendly_name != \"b\"")
}
// END - Keyboard Friendly Name Tests
