package music

NoteLetter :: enum {
	C,
	D,
	E,
	F,
	G,
	A,
	B,
}

@(rodata)
@(private="file")
NoteLetter_DISPLAY_NAMES := []string{
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
NoteLetter_KEYBOARD_FRIENDLY_NAMES := []string{
	"c",
	"d",
	"e",
	"f",
	"g",
	"a",
	"b",
}

NoteLetter_display_name :: proc(letter: NoteLetter) -> ^string {
	return &NoteLetter_DISPLAY_NAMES[cast(int)letter]
}

NoteLetter_keyboard_friendly_name := proc(letter: NoteLetter) -> ^string {
	return &NoteLetter_KEYBOARD_FRIENDLY_NAMES[cast(int)letter]
}
