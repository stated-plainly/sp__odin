package music

import "core:fmt"

import "../errors"

Note :: struct {
	letter: NoteLetter,
	modifier: NoteModifier,
	scale_degree: ScaleDegree,
}

Note_new :: proc(letter: NoteLetter, modifier: NoteModifier, scale_degree: ScaleDegree) -> (Maybe(Note), Maybe(errors.Error)) {
	note: Maybe(Note)
	error: Maybe(errors.Error)

	switch scale_degree {
		case .One:
			note, error = Note_new_one(letter, modifier)
		case .TwoFlat:
			note, error = Note_new_two_flat(letter, modifier)
		case .Two:
			note, error = Note_new_two(letter, modifier)
		case .ThreeFlat:
			note, error = Note_new_three_flat(letter, modifier)
		case .Three:
			note, error = Note_new_three(letter, modifier)
		case .Four:
			note, error = Note_new_four(letter, modifier)
		case .FourSharp:
			note, error = Note_new_four_sharp(letter, modifier)
		case .FiveFlat:
			note, error = Note_new_five_flat(letter, modifier)
		case .Five:
			note, error = Note_new_five(letter, modifier)
		case .FiveSharp:
			note, error = Note_new_five_sharp(letter, modifier)
		case .SixFlat:
			note, error = Note_new_six_flat(letter, modifier)
		case .Six:
			note, error = Note_new_six(letter, modifier)
		case .SevenFlat:
			note, error = Note_new_seven_flat(letter, modifier)
		case .Seven:
			note, error = Note_new_seven(letter, modifier)
		case .Eight:
			note, error = Note_new_eight(letter, modifier)
		case .NineFlat:
			note, error = Note_new_nine_flat(letter, modifier)
		case .Nine:
			note, error = Note_new_nine(letter, modifier)
		case .NineSharp:
			note, error = Note_new_nine_sharp(letter, modifier)
		case .Eleven:
			note, error = Note_new_eleven(letter, modifier)
		case .ElevenSharp:
			note, error = Note_new_eleven_sharp(letter, modifier)
		case .ThirteenFlat:
			note, error = Note_new_thirteen_flat(letter, modifier)
		case .Thirteen:
			note, error = Note_new_thirteen(letter, modifier)
	}

	return note, error
}

Note_display_name :: proc(note: ^Note) -> string {
	return fmt.tprintf("%s%s", NoteLetter_display_name(note.letter)^, NoteModifier_display_name(note.modifier)^)
}

Note_keyboard_friendly_name :: proc(note: ^Note) -> string {
	return fmt.tprintf("%s%s", NoteLetter_keyboard_friendly_name(note.letter)^, NoteModifier_keyboard_friendly_name(note.modifier)^)
}

@(private="file")
Note_instantiation_error_message :: proc(contextless_note: ^ContextlessNote, scale_degree: ScaleDegree) -> errors.Error {
	return errors.Error_new(errors.ErrorType.InstantiationError, fmt.tprintf("'%s' is not a valid %s note", ContextlessNote_display_name(contextless_note), ScaleDegree_display_name(scale_degree)^))
}

@(private="file")
Note_new_one :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.One

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)

	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_two_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.TwoFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// G
		case "gbb":
			fallthrough
		case "gb":
			fallthrough
		case "g":
			fallthrough
		// D
		case "dbb":
			fallthrough
		case "db":
			fallthrough
		case "d":
			fallthrough
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_two :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Two

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_three_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.ThreeFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_three :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Three

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_four :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Four

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_four_sharp :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.FourSharp

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			fallthrough
		// A
		case "a":
			fallthrough
		case "as":
			fallthrough
		case "ass":
			fallthrough
		// E
		case "e":
			fallthrough
		case "es":
			fallthrough
		case "ess":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_five_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.FiveFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// C
		case "cbb":
			fallthrough
		case "cb":
			fallthrough
		case "c":
			fallthrough
		// G
		case "gbb":
			fallthrough
		case "gb":
			fallthrough
		case "g":
			fallthrough
		// D
		case "dbb":
			fallthrough
		case "db":
			fallthrough
		case "d":
			fallthrough
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_five :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Five

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_five_sharp :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.FiveSharp

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			fallthrough
		// A
		case "a":
			fallthrough
		case "as":
			fallthrough
		case "ass":
			fallthrough
		// E
		case "e":
			fallthrough
		case "es":
			fallthrough
		case "ess":
			fallthrough
		// B
		case "b":
			fallthrough
		case "bs":
			fallthrough
		case "bss":
			fallthrough
		// F
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		case "fsss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_six_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.SixFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// D
		case "dbb":
			fallthrough
		case "db":
			fallthrough
		case "d":
			fallthrough
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_six :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Six

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_seven_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.SevenFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cbb":
			fallthrough
		case "cb":
			fallthrough
		case "c":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_seven :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Seven

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			fallthrough
		// A
		case "a":
			fallthrough
		case "as":
			fallthrough
		case "ass":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_eight :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Eight

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_nine_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.NineFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// G
		case "gbb":
			fallthrough
		case "gb":
			fallthrough
		case "g":
			fallthrough
		// D
		case "dbb":
			fallthrough
		case "db":
			fallthrough
		case "d":
			fallthrough
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_nine :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Nine

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_nine_sharp :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.NineSharp

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			fallthrough
		// A
		case "a":
			fallthrough
		case "as":
			fallthrough
		case "ass":
			fallthrough
		// E
		case "e":
			fallthrough
		case "es":
			fallthrough
		case "ess":
			fallthrough
		// B
		case "b":
			fallthrough
		case "bs":
			fallthrough
		case "bss":
			fallthrough
		// F
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		case "fsss":
			fallthrough
		// C
		case "cs":
			fallthrough
		case "css":
			fallthrough
		case "csss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_eleven :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Eleven

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			fallthrough
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_eleven_sharp :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.ElevenSharp

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			fallthrough
		// D
		case "d":
			fallthrough
		case "ds":
			fallthrough
		case "dss":
			fallthrough
		// A
		case "a":
			fallthrough
		case "as":
			fallthrough
		case "ass":
			fallthrough
		// E
		case "e":
			fallthrough
		case "es":
			fallthrough
		case "ess":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_thirteen_flat :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.ThirteenFlat

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// D
		case "dbb":
			fallthrough
		case "db":
			fallthrough
		case "d":
			fallthrough
		// A
		case "abb":
			fallthrough
		case "ab":
			fallthrough
		case "a":
			fallthrough
		// E
		case "ebb":
			fallthrough
		case "eb":
			fallthrough
		case "e":
			fallthrough
		// B
		case "bbb":
			fallthrough
		case "bb":
			fallthrough
		case "b":
			fallthrough
		// F
		case "fb":
			fallthrough
		case "f":
			fallthrough
		case "fs":
			fallthrough
		// C
		case "cb":
			fallthrough
		case "c":
			fallthrough
		case "cs":
			fallthrough
		// G
		case "gb":
			fallthrough
		case "g":
			fallthrough
		case "gs":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}

@(private="file")
Note_new_thirteen :: proc(letter: NoteLetter, modifier: NoteModifier) -> (Maybe(Note), Maybe(errors.Error)) {
	scale_degree := ScaleDegree.Thirteen

	note: Maybe(Note)
	error: Maybe(errors.Error)

	contextless_note := ContextlessNote_new(letter, modifier)
	
	switch ContextlessNote_keyboard_friendly_name(&contextless_note) {
		// D
		case "db":
			fallthrough
		case "d":
			fallthrough
		case "ds":
			fallthrough
		// A
		case "ab":
			fallthrough
		case "a":
			fallthrough
		case "as":
			fallthrough
		// E
		case "eb":
			fallthrough
		case "e":
			fallthrough
		case "es":
			fallthrough
		// B
		case "bb":
			fallthrough
		case "b":
			fallthrough
		case "bs":
			fallthrough
		// F
		case "f":
			fallthrough
		case "fs":
			fallthrough
		case "fss":
			fallthrough
		// C
		case "c":
			fallthrough
		case "cs":
			fallthrough
		case "css":
			fallthrough
		// G
		case "g":
			fallthrough
		case "gs":
			fallthrough
		case "gss":
			note = Note { letter, modifier, scale_degree }
		case:
			error = Note_instantiation_error_message(&contextless_note, scale_degree)
	}

	return note, error
}
