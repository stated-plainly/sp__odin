package sp__music

import "core:math/rand"

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

ScaleDegree__random :: proc() -> ScaleDegree {
	output: ScaleDegree

	random_int := rand.int_range(0, 22)

	switch random_int {
		case 0:
			output = .One
		case 1:
			output = .TwoFlat
		case 2:
			output = .Two
		case 3:
			output = .ThreeFlat
		case 4:
			output = .Three
		case 5:
			output = .Four
		case 6:
			output = .FourSharp
		case 7:
			output = .FiveFlat
		case 8:
			output = .Five
		case 9:
			output = .FiveSharp
		case 10:
			output = .SixFlat
		case 11:
			output = .Six
		case 12:
			output = .SevenFlat
		case 13:
			output = .Seven
		case 14:
			output = .Eight
		case 15:
			output = .NineFlat
		case 16:
			output = .Nine
		case 17:
			output = .NineSharp
		case 18:
			output = .Eleven
		case 19:
			output = .ElevenSharp
		case 20:
			output = .ThirteenFlat
		case 21:
			output = .Thirteen
	}

	return output
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

ScaleDegree__keyboard_friendly_name :: proc(scale_degree: ScaleDegree) -> string {
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

ScaleDegree__from_keyboard_friendly_name :: proc(keyboard_friendly_name: string) -> Maybe(ScaleDegree) {
	output: Maybe(ScaleDegree)

	switch keyboard_friendly_name {
		case "1":
			output = .One
		case "2b":
			output = .TwoFlat
		case "2":
			output = .Two
		case "3b":
			output = .ThreeFlat
		case "3":
			output = .Three
		case "4":
			output = .Four
		case "4s":
			output = .FourSharp
		case "5b":
			output = .FiveFlat
		case "5":
			output = .Five
		case "5s":
			output = .FiveSharp
		case "6b":
			output = .SixFlat
		case "6":
			output = .Six
		case "7b":
			output = .SevenFlat
		case "7":
			output = .Seven
		case "8":
			output = .Eight
		case "9b":
			output = .NineFlat
		case "9":
			output = .Nine
		case "9s":
			output = .NineSharp
		case "11":
			output = .Eleven
		case "11s":
			output = .ElevenSharp
		case "13b":
			output = .ThirteenFlat
		case "13":
			output = .Thirteen
	}

	return output
}
