package sp__music_tests

import "core:testing"

import "../../libs/sp__music"

// START - Display Name Tests
@(test)
test__ScaleDegree__display_name__One :: proc(t: ^testing.T) {
	one := sp__music.ScaleDegree.One

	testing.expect(t, sp__music.ScaleDegree__display_name(one) == "1", "ScaleDegree.One's display_name failed to equal \"1\"")
}

@(test)
test__ScaleDegree__display_name__TwoFlat :: proc(t: ^testing.T) {
	two_flat := sp__music.ScaleDegree.TwoFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(two_flat) == "2♭", "ScaleDegree.TwoFlat's display_name failed to equal \"2♭\"")
}

@(test)
test__ScaleDegree__display_name__Two :: proc(t: ^testing.T) {
	two := sp__music.ScaleDegree.Two

	testing.expect(t, sp__music.ScaleDegree__display_name(two) == "2", "ScaleDegree.Two's display_name failed to equal \"2\"")
}

@(test)
test__ScaleDegree__display_name__ThreeFlat :: proc(t: ^testing.T) {
	three_flat := sp__music.ScaleDegree.ThreeFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(three_flat) == "3♭", "ScaleDegree.ThreeFlat's display_name failed to equal \"3♭\"")
}

@(test)
test__ScaleDegree__display_name__Three :: proc(t: ^testing.T) {
	three := sp__music.ScaleDegree.Three

	testing.expect(t, sp__music.ScaleDegree__display_name(three) == "3", "ScaleDegree.Three's display_name failed to equal \"3\"")
}

@(test)
test__ScaleDegree__display_name__Four :: proc(t: ^testing.T) {
	four := sp__music.ScaleDegree.Four

	testing.expect(t, sp__music.ScaleDegree__display_name(four) == "4", "ScaleDegree.Four's display_name failed to equal \"4\"")
}

@(test)
test__ScaleDegree__display_name__FourSharp :: proc(t: ^testing.T) {
	four_sharp := sp__music.ScaleDegree.FourSharp

	testing.expect(t, sp__music.ScaleDegree__display_name(four_sharp) == "4♯", "ScaleDegree.FourSharp's display_name failed to equal \"4♯\"")
}

@(test)
test__ScaleDegree__display_name__FiveFlat :: proc(t: ^testing.T) {
	five_flat := sp__music.ScaleDegree.FiveFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(five_flat) == "5♭", "ScaleDegree.FiveFlat's display_name failed to equal \"5♭\"")
}

@(test)
test__ScaleDegree__display_name__Five :: proc(t: ^testing.T) {
	five := sp__music.ScaleDegree.Five

	testing.expect(t, sp__music.ScaleDegree__display_name(five) == "5", "ScaleDegree.Five's display_name failed to equal \"5\"")
}

@(test)
test__ScaleDegree__display_name__FiveSharp :: proc(t: ^testing.T) {
	five_sharp := sp__music.ScaleDegree.FiveSharp

	testing.expect(t, sp__music.ScaleDegree__display_name(five_sharp) == "5♯", "ScaleDegree.FiveSharp's display_name failed to equal \"5♯\"")
}

@(test)
test__ScaleDegree__display_name__SixFlat :: proc(t: ^testing.T) {
	six_flat := sp__music.ScaleDegree.SixFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(six_flat) == "6♭", "ScaleDegree.SixFlat's display_name failed to equal \"6♭\"")
}

@(test)
test__ScaleDegree__display_name__Six :: proc(t: ^testing.T) {
	six := sp__music.ScaleDegree.Six

	testing.expect(t, sp__music.ScaleDegree__display_name(six) == "6", "ScaleDegree.Six's display_name failed to equal \"6\"")
}

@(test)
test__ScaleDegree__display_name__SevenFlat :: proc(t: ^testing.T) {
	seven_flat := sp__music.ScaleDegree.SevenFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(seven_flat) == "7♭", "ScaleDegree.SevenFlat's display_name failed to equal \"7♭\"")
}

@(test)
test__ScaleDegree__display_name__Seven :: proc(t: ^testing.T) {
	seven := sp__music.ScaleDegree.Seven

	testing.expect(t, sp__music.ScaleDegree__display_name(seven) == "7", "ScaleDegree.Seven's display_name failed to equal \"7\"")
}

@(test)
test__ScaleDegree__display_name__Eight :: proc(t: ^testing.T) {
	eight := sp__music.ScaleDegree.Eight

	testing.expect(t, sp__music.ScaleDegree__display_name(eight) == "8", "ScaleDegree.Eight's display_name failed to equal \"8\"")
}

@(test)
test__ScaleDegree__display_name__NineFlat :: proc(t: ^testing.T) {
	nine_flat := sp__music.ScaleDegree.NineFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(nine_flat) == "9♭", "ScaleDegree.NineFlat's display_name failed to equal \"9♭\"")
}

@(test)
test__ScaleDegree__display_name__Nine :: proc(t: ^testing.T) {
	nine := sp__music.ScaleDegree.Nine

	testing.expect(t, sp__music.ScaleDegree__display_name(nine) == "9", "ScaleDegree.Nine's display_name failed to equal \"9\"")
}

@(test)
test__ScaleDegree__display_name__NineSharp :: proc(t: ^testing.T) {
	nine_sharp := sp__music.ScaleDegree.NineSharp

	testing.expect(t, sp__music.ScaleDegree__display_name(nine_sharp) == "9♯", "ScaleDegree.NineSharp's display_name failed to equal \"9♯\"")
}

@(test)
test__ScaleDegree__display_name__Eleven :: proc(t: ^testing.T) {
	eleven := sp__music.ScaleDegree.Eleven

	testing.expect(t, sp__music.ScaleDegree__display_name(eleven) == "11", "ScaleDegree.Eleven's display_name failed to equal \"11\"")
}

@(test)
test__ScaleDegree__display_name__ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := sp__music.ScaleDegree.ElevenSharp

	testing.expect(t, sp__music.ScaleDegree__display_name(eleven_sharp) == "11♯", "ScaleDegree.ElevenSharp's display_name failed to equal \"11♯\"")
}

@(test)
test__ScaleDegree__display_name__ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := sp__music.ScaleDegree.ThirteenFlat

	testing.expect(t, sp__music.ScaleDegree__display_name(thirteen_flat) == "13♭", "ScaleDegree.ThirteenFlat's display_name failed to equal \"13♭\"")
}

@(test)
test__ScaleDegree__display_name__Thirteen :: proc(t: ^testing.T) {
	thirteen := sp__music.ScaleDegree.Thirteen

	testing.expect(t, sp__music.ScaleDegree__display_name(thirteen) == "13", "ScaleDegree.Thirteen's display_name failed to equal \"13\"")
}
// END - Display Name Tests
// START - Keyboard Friendly Name Tests
@(test)
test__ScaleDegree__keyboard_friendly_name__One :: proc(t: ^testing.T) {
	one := sp__music.ScaleDegree.One

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(one) == "1", "ScaleDegree.One's keyboard_friendly_name failed to equal \"1\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__TwoFlat :: proc(t: ^testing.T) {
	two_flat := sp__music.ScaleDegree.TwoFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(two_flat) == "2b", "ScaleDegree.TwoFlat's keyboard_friendly_name failed to equal \"2b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Two :: proc(t: ^testing.T) {
	two := sp__music.ScaleDegree.Two

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(two) == "2", "ScaleDegree.Two's keyboard_friendly_name failed to equal \"2\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ThreeFlat :: proc(t: ^testing.T) {
	three_flat := sp__music.ScaleDegree.ThreeFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(three_flat) == "3b", "ScaleDegree.ThreeFlat's keyboard_friendly_name failed to equal \"3b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Three :: proc(t: ^testing.T) {
	three := sp__music.ScaleDegree.Three

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(three) == "3", "ScaleDegree.Three's keyboard_friendly_name failed to equal \"3\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Four :: proc(t: ^testing.T) {
	four := sp__music.ScaleDegree.Four

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(four) == "4", "ScaleDegree.Four's keyboard_friendly_name failed to equal \"4\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FourSharp :: proc(t: ^testing.T) {
	four_sharp := sp__music.ScaleDegree.FourSharp

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(four_sharp) == "4s", "ScaleDegree.FourSharp's keyboard_friendly_name failed to equal \"4s\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FiveFlat :: proc(t: ^testing.T) {
	five_flat := sp__music.ScaleDegree.FiveFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(five_flat) == "5b", "ScaleDegree.FiveFlat's keyboard_friendly_name failed to equal \"5b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Five :: proc(t: ^testing.T) {
	five := sp__music.ScaleDegree.Five

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(five) == "5", "ScaleDegree.Five's keyboard_friendly_name failed to equal \"5\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__FiveSharp :: proc(t: ^testing.T) {
	five_sharp := sp__music.ScaleDegree.FiveSharp

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(five_sharp) == "5s", "ScaleDegree.FiveSharp's keyboard_friendly_name failed to equal \"5s\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__SixFlat :: proc(t: ^testing.T) {
	six_flat := sp__music.ScaleDegree.SixFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(six_flat) == "6b", "ScaleDegree.SixFlat's keyboard_friendly_name failed to equal \"6b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Six :: proc(t: ^testing.T) {
	six := sp__music.ScaleDegree.Six

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(six) == "6", "ScaleDegree.Six's keyboard_friendly_name failed to equal \"6\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__SevenFlat :: proc(t: ^testing.T) {
	seven_flat := sp__music.ScaleDegree.SevenFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(seven_flat) == "7b", "ScaleDegree.SevenFlat's keyboard_friendly_name failed to equal \"7b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Seven :: proc(t: ^testing.T) {
	seven := sp__music.ScaleDegree.Seven

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(seven) == "7", "ScaleDegree.Seven's keyboard_friendly_name failed to equal \"7\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Eight :: proc(t: ^testing.T) {
	eight := sp__music.ScaleDegree.Eight

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(eight) == "8", "ScaleDegree.Eight's keyboard_friendly_name failed to equal \"8\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__NineFlat :: proc(t: ^testing.T) {
	nine_flat := sp__music.ScaleDegree.NineFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(nine_flat) == "9b", "ScaleDegree.NineFlat's keyboard_friendly_name failed to equal \"9b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Nine :: proc(t: ^testing.T) {
	nine := sp__music.ScaleDegree.Nine

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(nine) == "9", "ScaleDegree.Nine's keyboard_friendly_name failed to equal \"9\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__NineSharp :: proc(t: ^testing.T) {
	nine_sharp := sp__music.ScaleDegree.NineSharp

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(nine_sharp) == "9s", "ScaleDegree.NineSharp's keyboard_friendly_name failed to equal \"9s\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Eleven :: proc(t: ^testing.T) {
	eleven := sp__music.ScaleDegree.Eleven

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(eleven) == "11", "ScaleDegree.Eleven's keyboard_friendly_name failed to equal \"11\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := sp__music.ScaleDegree.ElevenSharp

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(eleven_sharp) == "11s", "ScaleDegree.ElevenSharp's keyboard_friendly_name failed to equal \"11s\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := sp__music.ScaleDegree.ThirteenFlat

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(thirteen_flat) == "13b", "ScaleDegree.ThirteenFlat's keyboard_friendly_name failed to equal \"13b\"")
}

@(test)
test__ScaleDegree__keyboard_friendly_name__Thirteen :: proc(t: ^testing.T) {
	thirteen := sp__music.ScaleDegree.Thirteen

	testing.expect(t, sp__music.ScaleDegree__keyboard_friendly_name(thirteen) == "13", "ScaleDegree.Thirteen's keyboard_friendly_name failed to equal \"13\"")
}
// END - Keyboard Friendly Name Tests
