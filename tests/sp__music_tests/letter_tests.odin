package sp__music_tests

import "core:testing"

import "../../libs/sp__music"

// START - Display Name Tests
@(test)
test__Letter__display_name__C :: proc(t: ^testing.T) {
	c := sp__music.Letter.C

	testing.expect(t, sp__music.Letter__display_name(c) == "C", "Letter.C's display_name != \"C\"")
}

@(test)
test__Letter__display_name__D :: proc(t: ^testing.T) {
	d := sp__music.Letter.D

	testing.expect(t, sp__music.Letter__display_name(d) == "D", "Letter.D's display_name != \"D\"")
}

@(test)
test__Letter__display_name__E :: proc(t: ^testing.T) {
	e := sp__music.Letter.E

	testing.expect(t, sp__music.Letter__display_name(e) == "E", "Letter.E's display_name != \"E\"")
}

@(test)
test__Letter__display_name__F :: proc(t: ^testing.T) {
	f := sp__music.Letter.F

	testing.expect(t, sp__music.Letter__display_name(f) == "F", "Letter.F's display_name != \"F\"")
}

@(test)
test__Letter__display_name__G :: proc(t: ^testing.T) {
	g := sp__music.Letter.G

	testing.expect(t, sp__music.Letter__display_name(g) == "G", "Letter.G's display_name != \"G\"")
}

@(test)
test__Letter__display_name__A :: proc(t: ^testing.T) {
	a := sp__music.Letter.A

	testing.expect(t, sp__music.Letter__display_name(a) == "A", "Letter.A's display_name != \"A\"")
}

@(test)
test__Letter__display_name__B :: proc(t: ^testing.T) {
	b := sp__music.Letter.B

	testing.expect(t, sp__music.Letter__display_name(b) == "B", "Letter.B's display_name != \"B\"")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Letter__keyboard_friendly_name__C :: proc(t: ^testing.T) {
	c := sp__music.Letter.C

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(c) == "c", "Letter.C's keyboard_friendly_name != \"c\"")
}

@(test)
test__Letter__keyboard_friendly_name__D :: proc(t: ^testing.T) {
	d := sp__music.Letter.D

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(d) == "d", "Letter.D's keyboard_friendly_name != \"d\"")
}

@(test)
test__Letter__keyboard_friendly_name__E :: proc(t: ^testing.T) {
	e := sp__music.Letter.E

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(e) == "e", "Letter.E's keyboard_friendly_name != \"e\"")
}

@(test)
test__Letter__keyboard_friendly_name__F :: proc(t: ^testing.T) {
	f := sp__music.Letter.F

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(f) == "f", "Letter.F's keyboard_friendly_name != \"f\"")
}

@(test)
test__Letter__keyboard_friendly_name__G :: proc(t: ^testing.T) {
	g := sp__music.Letter.G

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(g) == "g", "Letter.G's keyboard_friendly_name != \"g\"")
}

@(test)
test__Letter__keyboard_friendly_name__A :: proc(t: ^testing.T) {
	a := sp__music.Letter.A

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(a) == "a", "Letter.A's keyboard_friendly_name != \"a\"")
}

@(test)
test__Letter__keyboard_friendly_name__B :: proc(t: ^testing.T) {
	b := sp__music.Letter.B

	testing.expect(t, sp__music.Letter__keyboard_friendly_name(b) == "b", "Letter.B's keyboard_friendly_name != \"b\"")
}
// END - Keyboard Friendly Name Tests
