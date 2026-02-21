package sp__music_tests

import "core:testing"

import "../../libs/music"

// START - Display Name Tests
@(test)
test__ScaleDegree__display_name__One :: proc(t: ^testing.T) {
	one := music.ScaleDegree.One

	testing.expect(t, music.ScaleDegree__display_name(one) == "1")
}

@(test)
test__ScaleDegree__display_name__TwoFlat :: proc(t: ^testing.T) {
	two_flat := music.ScaleDegree.TwoFlat

	testing.expect(t, music.ScaleDegree__display_name(two_flat) == "2♭")
}

@(test)
test__ScaleDegree__display_name__Two :: proc(t: ^testing.T) {
	two := music.ScaleDegree.Two

	testing.expect(t, music.ScaleDegree__display_name(two) == "2")
}

@(test)
test__ScaleDegree__display_name__ThreeFlat :: proc(t: ^testing.T) {
	three_flat := music.ScaleDegree.ThreeFlat

	testing.expect(t, music.ScaleDegree__display_name(three_flat) == "3♭")
}

@(test)
test__ScaleDegree__display_name__Three :: proc(t: ^testing.T) {
	three := music.ScaleDegree.Three

	testing.expect(t, music.ScaleDegree__display_name(three) == "3")
}

@(test)
test__ScaleDegree__display_name__Four :: proc(t: ^testing.T) {
	four := music.ScaleDegree.Four

	testing.expect(t, music.ScaleDegree__display_name(four) == "4")
}

@(test)
test__ScaleDegree__display_name__FourSharp :: proc(t: ^testing.T) {
	four_sharp := music.ScaleDegree.FourSharp

	testing.expect(t, music.ScaleDegree__display_name(four_sharp) == "4♯")
}

@(test)
test__ScaleDegree__display_name__FiveFlat :: proc(t: ^testing.T) {
	five_flat := music.ScaleDegree.FiveFlat

	testing.expect(t, music.ScaleDegree__display_name(five_flat) == "5♭")
}

@(test)
test__ScaleDegree__display_name__Five :: proc(t: ^testing.T) {
	five := music.ScaleDegree.Five

	testing.expect(t, music.ScaleDegree__display_name(five) == "5")
}

@(test)
test__ScaleDegree__display_name__FiveSharp :: proc(t: ^testing.T) {
	five_sharp := music.ScaleDegree.FiveSharp

	testing.expect(t, music.ScaleDegree__display_name(five_sharp) == "5♯")
}

@(test)
test__ScaleDegree__display_name__SixFlat :: proc(t: ^testing.T) {
	six_flat := music.ScaleDegree.SixFlat

	testing.expect(t, music.ScaleDegree__display_name(six_flat) == "6♭")
}

@(test)
test__ScaleDegree__display_name__Six :: proc(t: ^testing.T) {
	six := music.ScaleDegree.Six

	testing.expect(t, music.ScaleDegree__display_name(six) == "6")
}

@(test)
test__ScaleDegree__display_name__SevenFlat :: proc(t: ^testing.T) {
	seven_flat := music.ScaleDegree.SevenFlat

	testing.expect(t, music.ScaleDegree__display_name(seven_flat) == "7♭")
}

@(test)
test__ScaleDegree__display_name__Seven :: proc(t: ^testing.T) {
	seven := music.ScaleDegree.Seven

	testing.expect(t, music.ScaleDegree__display_name(seven) == "7")
}

@(test)
test__ScaleDegree__display_name__Eight :: proc(t: ^testing.T) {
	eight := music.ScaleDegree.Eight

	testing.expect(t, music.ScaleDegree__display_name(eight) == "8")
}

@(test)
test__ScaleDegree__display_name__NineFlat :: proc(t: ^testing.T) {
	nine_flat := music.ScaleDegree.NineFlat

	testing.expect(t, music.ScaleDegree__display_name(nine_flat) == "9♭")
}

@(test)
test__ScaleDegree__display_name__Nine :: proc(t: ^testing.T) {
	nine := music.ScaleDegree.Nine

	testing.expect(t, music.ScaleDegree__display_name(nine) == "9")
}

@(test)
test__ScaleDegree__display_name__NineSharp :: proc(t: ^testing.T) {
	nine_sharp := music.ScaleDegree.NineSharp

	testing.expect(t, music.ScaleDegree__display_name(nine_sharp) == "9♯")
}

@(test)
test__ScaleDegree__display_name__Eleven :: proc(t: ^testing.T) {
	eleven := music.ScaleDegree.Eleven

	testing.expect(t, music.ScaleDegree__display_name(eleven) == "11")
}

@(test)
test__ScaleDegree__display_name__ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := music.ScaleDegree.ElevenSharp

	testing.expect(t, music.ScaleDegree__display_name(eleven_sharp) == "11♯")
}

@(test)
test__ScaleDegree__display_name__ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := music.ScaleDegree.ThirteenFlat

	testing.expect(t, music.ScaleDegree__display_name(thirteen_flat) == "13♭")
}

@(test)
test__ScaleDegree__display_name__Thirteen :: proc(t: ^testing.T) {
	thirteen := music.ScaleDegree.Thirteen

	testing.expect(t, music.ScaleDegree__display_name(thirteen) == "13")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__ScaleDegree__keyboard_friendly_name__One :: proc(t: ^testing.T) {
	one := music.ScaleDegree.One

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(one) == "1")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__TwoFlat :: proc(t: ^testing.T) {
	two_flat := music.ScaleDegree.TwoFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(two_flat) == "2b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Two :: proc(t: ^testing.T) {
	two := music.ScaleDegree.Two

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(two) == "2")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ThreeFlat :: proc(t: ^testing.T) {
	three_flat := music.ScaleDegree.ThreeFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(three_flat) == "3b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Three :: proc(t: ^testing.T) {
	three := music.ScaleDegree.Three

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(three) == "3")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Four :: proc(t: ^testing.T) {
	four := music.ScaleDegree.Four

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(four) == "4")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FourSharp :: proc(t: ^testing.T) {
	four_sharp := music.ScaleDegree.FourSharp

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(four_sharp) == "4s")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FiveFlat :: proc(t: ^testing.T) {
	five_flat := music.ScaleDegree.FiveFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(five_flat) == "5b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Five :: proc(t: ^testing.T) {
	five := music.ScaleDegree.Five

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(five) == "5")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FiveSharp :: proc(t: ^testing.T) {
	five_sharp := music.ScaleDegree.FiveSharp

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(five_sharp) == "5s")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__SixFlat :: proc(t: ^testing.T) {
	six_flat := music.ScaleDegree.SixFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(six_flat) == "6b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Six :: proc(t: ^testing.T) {
	six := music.ScaleDegree.Six

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(six) == "6")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__SevenFlat :: proc(t: ^testing.T) {
	seven_flat := music.ScaleDegree.SevenFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(seven_flat) == "7b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Seven :: proc(t: ^testing.T) {
	seven := music.ScaleDegree.Seven

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(seven) == "7")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Eight :: proc(t: ^testing.T) {
	eight := music.ScaleDegree.Eight

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(eight) == "8")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__NineFlat :: proc(t: ^testing.T) {
	nine_flat := music.ScaleDegree.NineFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(nine_flat) == "9b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Nine :: proc(t: ^testing.T) {
	nine := music.ScaleDegree.Nine

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(nine) == "9")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__NineSharp :: proc(t: ^testing.T) {
	nine_sharp := music.ScaleDegree.NineSharp

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(nine_sharp) == "9s")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Eleven :: proc(t: ^testing.T) {
	eleven := music.ScaleDegree.Eleven

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(eleven) == "11")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := music.ScaleDegree.ElevenSharp

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(eleven_sharp) == "11s")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := music.ScaleDegree.ThirteenFlat

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(thirteen_flat) == "13b")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Thirteen :: proc(t: ^testing.T) {
	thirteen := music.ScaleDegree.Thirteen

	testing.expect(t, music.ScaleDegree__keyboard_friendly_name(thirteen) == "13")
}
// END - Keyboard Friendly Name Tests
