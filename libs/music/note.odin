package music

Note :: struct {
	letter: NoteLetter,
	modifier: NoteModifier,
	scale_degree: ScaleDegree,
}

Note_new :: proc(letter: NoteLetter, modifier: NoteModifier, scale_degree: ScaleDegree) -> (Note, bool) {
	return Note{letter, modifier, scale_degree}, true	
}
