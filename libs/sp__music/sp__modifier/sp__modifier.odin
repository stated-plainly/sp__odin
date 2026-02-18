package sp__modifier

Modifier :: enum {
	Flat,
	Sharp,
}

display_name :: proc(modifier: Modifier) -> ^string {
	return &DISPLAY_NAMES[int(modifier)]
}

keyboard_friendly_name := proc(modifier: Modifier) -> ^string {
	return &KEYBOARD_FRIENDLY_NAMES[int(modifier)]
}

@(rodata)
@(private="file")
DISPLAY_NAMES := []string{
	"♭",
	"♯",
}

@(rodata)
@(private="file")
KEYBOARD_FRIENDLY_NAMES := []string{
	"b",
	"s",
}
