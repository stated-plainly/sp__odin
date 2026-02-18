package sp__letter

Letter :: enum {
	C,
	D,
	E,
	F,
	G,
	A,
	B,
}

display_name :: proc(letter: Letter) -> ^string {
	return &DISPLAY_NAMES[int(letter)]
}

keyboard_friendly_name := proc(letter: Letter) -> ^string {
	return &KEYBOARD_FRIENDLY_NAMES[int(letter)]
}

@(rodata)
@(private="file")
DISPLAY_NAMES := []string{
	"C",
	"D",
	"E",
	"F",
	"G",
	"A",
	"B",
}

@(rodata)
@(private="file")
KEYBOARD_FRIENDLY_NAMES := []string{
	"c",
	"d",
	"e",
	"f",
	"g",
	"a",
	"b",
}
