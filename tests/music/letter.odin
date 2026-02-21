package sp__music_tests

import "core:testing"

import "../../libs/music"

// START - Display Name Tests
@(test)
test__Letter__display_name__C :: proc(t: ^testing.T) {
	c := music.Letter.C

	testing.expect(t, music.Letter__display_name(c) == "C")
}

@(test)
test__Letter__display_name__D :: proc(t: ^testing.T) {
	d := music.Letter.D

	testing.expect(t, music.Letter__display_name(d) == "D")
}

@(test)
test__Letter__display_name__E :: proc(t: ^testing.T) {
	e := music.Letter.E

	testing.expect(t, music.Letter__display_name(e) == "E")
}

@(test)
test__Letter__display_name__F :: proc(t: ^testing.T) {
	f := music.Letter.F

	testing.expect(t, music.Letter__display_name(f) == "F")
}

@(test)
test__Letter__display_name__G :: proc(t: ^testing.T) {
	g := music.Letter.G

	testing.expect(t, music.Letter__display_name(g) == "G")
}

@(test)
test__Letter__display_name__A :: proc(t: ^testing.T) {
	a := music.Letter.A

	testing.expect(t, music.Letter__display_name(a) == "A")
}

@(test)
test__Letter__display_name__B :: proc(t: ^testing.T) {
	b := music.Letter.B

	testing.expect(t, music.Letter__display_name(b) == "B")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__Letter__keyboard_friendly_name__C :: proc(t: ^testing.T) {
	c := music.Letter.C

	testing.expect(t, music.Letter__keyboard_friendly_name(c) == "c")
}

@(test)
test__Letter__keyboard_friendly_name__D :: proc(t: ^testing.T) {
	d := music.Letter.D

	testing.expect(t, music.Letter__keyboard_friendly_name(d) == "d")
}

@(test)
test__Letter__keyboard_friendly_name__E :: proc(t: ^testing.T) {
	e := music.Letter.E

	testing.expect(t, music.Letter__keyboard_friendly_name(e) == "e")
}

@(test)
test__Letter__keyboard_friendly_name__F :: proc(t: ^testing.T) {
	f := music.Letter.F

	testing.expect(t, music.Letter__keyboard_friendly_name(f) == "f")
}

@(test)
test__Letter__keyboard_friendly_name__G :: proc(t: ^testing.T) {
	g := music.Letter.G

	testing.expect(t, music.Letter__keyboard_friendly_name(g) == "g")
}

@(test)
test__Letter__keyboard_friendly_name__A :: proc(t: ^testing.T) {
	a := music.Letter.A

	testing.expect(t, music.Letter__keyboard_friendly_name(a) == "a")
}

@(test)
test__Letter__keyboard_friendly_name__B :: proc(t: ^testing.T) {
	b := music.Letter.B

	testing.expect(t, music.Letter__keyboard_friendly_name(b) == "b")
}
// END - Keyboard Friendly Name Tests
