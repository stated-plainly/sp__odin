package music

ScaleDegree :: enum {
	One,
	TwoFlat,
	Two,
	ThreeFlat,
	Three,
	Four,
	FourSharp,
	FiveFlat,
	Five,
	FiveSharp,
	SixFlat,
	Six,
	SevenFlat,
	Seven,
	Eight,
	NineFlat,
	Nine,
	NineSharp,
	Eleven,
	ElevenSharp,
	ThirteenFlat,
	Thirteen,
}

@(rodata)
@(private="file")
ScaleDegree_DISPLAY_NAMES := []string{
	"1",
	"2♭",
	"2",
	"3♭",
	"3",
	"4",
	"4♯",
	"5♭",
	"5",
	"5♯",
	"6♭",
	"6",
	"7♭",
	"7",
	"8",
	"9♭",
	"9",
	"9♯",
	"11",
	"11♯",
	"13♭",
	"13",
}

@(rodata)
@(private="file")
ScaleDegree_KEYBOARD_FRIENDLY_NAMES := []string{
	"1",
	"2b",
	"2",
	"3b",
	"3",
	"4",
	"4s",
	"5b",
	"5",
	"5s",
	"6b",
	"6",
	"7b",
	"7",
	"8",
	"9b",
	"9",
	"9s",
	"11",
	"11s",
	"13b",
	"13",
}

ScaleDegree_display_name :: proc(letter: ScaleDegree) -> ^string {
	return &ScaleDegree_DISPLAY_NAMES[cast(int)letter]
}

ScaleDegree_keyboard_friendly_name := proc(letter: ScaleDegree) -> ^string {
	return &ScaleDegree_KEYBOARD_FRIENDLY_NAMES[cast(int)letter]
}
