package music

import "core:fmt"

@(private)
ContextlessNote :: struct {
	letter: NoteLetter,
	modifier: NoteModifier,
}

@(private)
ContextlessNote_new :: proc(letter: NoteLetter, modifier: NoteModifier) -> ContextlessNote {
	return ContextlessNote { letter, modifier }
}

@(private)
ContextlessNote_display_name :: proc(contextless_note: ^ContextlessNote) -> string {
	return fmt.tprintf("%s%s", NoteLetter_display_name(contextless_note.letter)^, NoteModifier_display_name(contextless_note.modifier)^)
}

@(private)
ContextlessNote_keyboard_friendly_name := proc(contextless_note: ^ContextlessNote) -> string {
	return fmt.tprintf("%s%s", NoteLetter_keyboard_friendly_name(contextless_note.letter)^, NoteModifier_keyboard_friendly_name(contextless_note.modifier)^)
}
