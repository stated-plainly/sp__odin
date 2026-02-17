package music

NoteModifier :: enum {
	DoubleFlat,
	Flat,
	Natural,
	Sharp,
	DoubleSharp,
	TripleSharp,
}

@(rodata)
@(private="file")
NoteModifier_DISPLAY_NAMES := []string{
	"𝄫",
	"♭",
	"♮",
	"♯",
	"𝄪",
	"♯𝄪",
}

@(rodata)
@(private="file")
NoteModifier_KEYBOARD_FRIENDLY_NAMES := []string{
	"bb",
	"b",
	"",
	"s",
	"ss",
	"sss",
}

NoteModifier_display_name :: proc(modifier: NoteModifier) -> ^string {
	return &NoteModifier_DISPLAY_NAMES[cast(int)modifier]
}

NoteModifier_keyboard_friendly_name := proc(modifier: NoteModifier) -> ^string {
	return &NoteModifier_KEYBOARD_FRIENDLY_NAMES[cast(int)modifier]
}
