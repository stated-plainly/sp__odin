package sp__music

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

ScaleDegree__display_name :: proc(scale_degree: ScaleDegree) -> string {
	display_name: string

	switch scale_degree {
		case .One:
			display_name = "1"
		case .TwoFlat:
			display_name = "2♭"
		case .Two:
			display_name = "2"
		case .ThreeFlat:
			display_name = "3♭"
		case .Three:
			display_name = "3"
		case .Four:
			display_name = "4"
		case .FourSharp:
			display_name = "4♯"
		case .FiveFlat:
			display_name = "5♭"
		case .Five:
			display_name = "5"
		case .FiveSharp:
			display_name = "5♯"
		case .SixFlat:
			display_name = "6♭"
		case .Six:
			display_name = "6"
		case .SevenFlat:
			display_name = "7♭"
		case .Seven:
			display_name = "7"
		case .Eight:
			display_name = "8"
		case .NineFlat:
			display_name = "9♭"
		case .Nine:
			display_name = "9"
		case .NineSharp:
			display_name = "9♯"
		case .Eleven:
			display_name = "11"
		case .ElevenSharp:
			display_name = "11♯"
		case .ThirteenFlat:
			display_name = "13♭"
		case .Thirteen:
			display_name = "13"
	}

	return display_name
}

ScaleDegree__keyboard_friendly_name := proc(scale_degree: ScaleDegree) -> string {
	keyboard_friendly_name: string

	switch scale_degree {
		case .One:
			keyboard_friendly_name = "1"
		case .TwoFlat:
			keyboard_friendly_name = "2b"
		case .Two:
			keyboard_friendly_name = "2"
		case .ThreeFlat:
			keyboard_friendly_name = "3b"
		case .Three:
			keyboard_friendly_name = "3"
		case .Four:
			keyboard_friendly_name = "4"
		case .FourSharp:
			keyboard_friendly_name = "4s"
		case .FiveFlat:
			keyboard_friendly_name = "5b"
		case .Five:
			keyboard_friendly_name = "5"
		case .FiveSharp:
			keyboard_friendly_name = "5s"
		case .SixFlat:
			keyboard_friendly_name = "6b"
		case .Six:
			keyboard_friendly_name = "6"
		case .SevenFlat:
			keyboard_friendly_name = "7b"
		case .Seven:
			keyboard_friendly_name = "7"
		case .Eight:
			keyboard_friendly_name = "8"
		case .NineFlat:
			keyboard_friendly_name = "9b"
		case .Nine:
			keyboard_friendly_name = "9"
		case .NineSharp:
			keyboard_friendly_name = "9s"
		case .Eleven:
			keyboard_friendly_name = "11"
		case .ElevenSharp:
			keyboard_friendly_name = "11s"
		case .ThirteenFlat:
			keyboard_friendly_name = "13b"
		case .Thirteen:
			keyboard_friendly_name = "13"
	}

	return keyboard_friendly_name
}
