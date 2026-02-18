package sp__scale_degree_tests

import "core:testing"

import "sp__music:sp__scale_degree"

// START - Display Name Tests
@(test)
display_name_One :: proc(t: ^testing.T) {
	one := sp__scale_degree.ScaleDegree.One

	testing.expect(t, sp__scale_degree.display_name(one)^ == "1", "ScaleDegree.One's display_name failed to equal \"1\"")
}

@(test)
display_name_TwoFlat :: proc(t: ^testing.T) {
	two_flat := sp__scale_degree.ScaleDegree.TwoFlat

	testing.expect(t, sp__scale_degree.display_name(two_flat)^ == "2♭", "ScaleDegree.TwoFlat's display_name failed to equal \"2♭\"")
}

@(test)
display_name_Two :: proc(t: ^testing.T) {
	two := sp__scale_degree.ScaleDegree.Two

	testing.expect(t, sp__scale_degree.display_name(two)^ == "2", "ScaleDegree.Two's display_name failed to equal \"2\"")
}

@(test)
display_name_ThreeFlat :: proc(t: ^testing.T) {
	three_flat := sp__scale_degree.ScaleDegree.ThreeFlat

	testing.expect(t, sp__scale_degree.display_name(three_flat)^ == "3♭", "ScaleDegree.ThreeFlat's display_name failed to equal \"3♭\"")
}

@(test)
display_name_Three :: proc(t: ^testing.T) {
	three := sp__scale_degree.ScaleDegree.Three

	testing.expect(t, sp__scale_degree.display_name(three)^ == "3", "ScaleDegree.Three's display_name failed to equal \"3\"")
}

@(test)
display_name_Four :: proc(t: ^testing.T) {
	four := sp__scale_degree.ScaleDegree.Four

	testing.expect(t, sp__scale_degree.display_name(four)^ == "4", "ScaleDegree.Four's display_name failed to equal \"4\"")
}

@(test)
display_name_FourSharp :: proc(t: ^testing.T) {
	four_sharp := sp__scale_degree.ScaleDegree.FourSharp

	testing.expect(t, sp__scale_degree.display_name(four_sharp)^ == "4♯", "ScaleDegree.FourSharp's display_name failed to equal \"4♯\"")
}

@(test)
display_name_FiveFlat :: proc(t: ^testing.T) {
	five_flat := sp__scale_degree.ScaleDegree.FiveFlat

	testing.expect(t, sp__scale_degree.display_name(five_flat)^ == "5♭", "ScaleDegree.FiveFlat's display_name failed to equal \"5♭\"")
}

@(test)
display_name_Five :: proc(t: ^testing.T) {
	five := sp__scale_degree.ScaleDegree.Five

	testing.expect(t, sp__scale_degree.display_name(five)^ == "5", "ScaleDegree.Five's display_name failed to equal \"5\"")
}

@(test)
display_name_FiveSharp :: proc(t: ^testing.T) {
	five_sharp := sp__scale_degree.ScaleDegree.FiveSharp

	testing.expect(t, sp__scale_degree.display_name(five_sharp)^ == "5♯", "ScaleDegree.FiveSharp's display_name failed to equal \"5♯\"")
}

@(test)
display_name_SixFlat :: proc(t: ^testing.T) {
	six_flat := sp__scale_degree.ScaleDegree.SixFlat

	testing.expect(t, sp__scale_degree.display_name(six_flat)^ == "6♭", "ScaleDegree.SixFlat's display_name failed to equal \"6♭\"")
}

@(test)
display_name_Six :: proc(t: ^testing.T) {
	six := sp__scale_degree.ScaleDegree.Six

	testing.expect(t, sp__scale_degree.display_name(six)^ == "6", "ScaleDegree.Six's display_name failed to equal \"6\"")
}

@(test)
display_name_SevenFlat :: proc(t: ^testing.T) {
	seven_flat := sp__scale_degree.ScaleDegree.SevenFlat

	testing.expect(t, sp__scale_degree.display_name(seven_flat)^ == "7♭", "ScaleDegree.SevenFlat's display_name failed to equal \"7♭\"")
}

@(test)
display_name_Seven :: proc(t: ^testing.T) {
	seven := sp__scale_degree.ScaleDegree.Seven

	testing.expect(t, sp__scale_degree.display_name(seven)^ == "7", "ScaleDegree.Seven's display_name failed to equal \"7\"")
}

@(test)
display_name_Eight :: proc(t: ^testing.T) {
	eight := sp__scale_degree.ScaleDegree.Eight

	testing.expect(t, sp__scale_degree.display_name(eight)^ == "8", "ScaleDegree.Eight's display_name failed to equal \"8\"")
}

@(test)
display_name_NineFlat :: proc(t: ^testing.T) {
	nine_flat := sp__scale_degree.ScaleDegree.NineFlat

	testing.expect(t, sp__scale_degree.display_name(nine_flat)^ == "9♭", "ScaleDegree.NineFlat's display_name failed to equal \"9♭\"")
}

@(test)
display_name_Nine :: proc(t: ^testing.T) {
	nine := sp__scale_degree.ScaleDegree.Nine

	testing.expect(t, sp__scale_degree.display_name(nine)^ == "9", "ScaleDegree.Nine's display_name failed to equal \"9\"")
}

@(test)
display_name_NineSharp :: proc(t: ^testing.T) {
	nine_sharp := sp__scale_degree.ScaleDegree.NineSharp

	testing.expect(t, sp__scale_degree.display_name(nine_sharp)^ == "9♯", "ScaleDegree.NineSharp's display_name failed to equal \"9♯\"")
}

@(test)
display_name_Eleven :: proc(t: ^testing.T) {
	eleven := sp__scale_degree.ScaleDegree.Eleven

	testing.expect(t, sp__scale_degree.display_name(eleven)^ == "11", "ScaleDegree.Eleven's display_name failed to equal \"11\"")
}

@(test)
display_name_ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := sp__scale_degree.ScaleDegree.ElevenSharp

	testing.expect(t, sp__scale_degree.display_name(eleven_sharp)^ == "11♯", "ScaleDegree.ElevenSharp's display_name failed to equal \"11♯\"")
}

@(test)
display_name_ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := sp__scale_degree.ScaleDegree.ThirteenFlat

	testing.expect(t, sp__scale_degree.display_name(thirteen_flat)^ == "13♭", "ScaleDegree.ThirteenFlat's display_name failed to equal \"13♭\"")
}

@(test)
display_name_Thirteen :: proc(t: ^testing.T) {
	thirteen := sp__scale_degree.ScaleDegree.Thirteen

	testing.expect(t, sp__scale_degree.display_name(thirteen)^ == "13", "ScaleDegree.Thirteen's display_name failed to equal \"13\"")
}
// END - Display Name Tests

// START - Keyboard Friendly Name Tests
@(test)
keyboard_friendly_name_One :: proc(t: ^testing.T) {
	one := sp__scale_degree.ScaleDegree.One

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(one)^ == "1", "ScaleDegree.One's keyboard_friendly_name failed to equal \"1\"")
}

@(test)
keyboard_friendly_name_TwoFlat :: proc(t: ^testing.T) {
	two_flat := sp__scale_degree.ScaleDegree.TwoFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(two_flat)^ == "2b", "ScaleDegree.TwoFlat's keyboard_friendly_name failed to equal \"2b\"")
}

@(test)
keyboard_friendly_name_Two :: proc(t: ^testing.T) {
	two := sp__scale_degree.ScaleDegree.Two

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(two)^ == "2", "ScaleDegree.Two's keyboard_friendly_name failed to equal \"2\"")
}

@(test)
keyboard_friendly_name_ThreeFlat :: proc(t: ^testing.T) {
	three_flat := sp__scale_degree.ScaleDegree.ThreeFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(three_flat)^ == "3b", "ScaleDegree.ThreeFlat's keyboard_friendly_name failed to equal \"3b\"")
}

@(test)
keyboard_friendly_name_Three :: proc(t: ^testing.T) {
	three := sp__scale_degree.ScaleDegree.Three

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(three)^ == "3", "ScaleDegree.Three's keyboard_friendly_name failed to equal \"3\"")
}

@(test)
keyboard_friendly_name_Four :: proc(t: ^testing.T) {
	four := sp__scale_degree.ScaleDegree.Four

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(four)^ == "4", "ScaleDegree.Four's keyboard_friendly_name failed to equal \"4\"")
}

@(test)
keyboard_friendly_name_FourSharp :: proc(t: ^testing.T) {
	four_sharp := sp__scale_degree.ScaleDegree.FourSharp

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(four_sharp)^ == "4s", "ScaleDegree.FourSharp's keyboard_friendly_name failed to equal \"4s\"")
}

@(test)
keyboard_friendly_name_FiveFlat :: proc(t: ^testing.T) {
	five_flat := sp__scale_degree.ScaleDegree.FiveFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(five_flat)^ == "5b", "ScaleDegree.FiveFlat's keyboard_friendly_name failed to equal \"5b\"")
}

@(test)
keyboard_friendly_name_Five :: proc(t: ^testing.T) {
	five := sp__scale_degree.ScaleDegree.Five

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(five)^ == "5", "ScaleDegree.Five's keyboard_friendly_name failed to equal \"5\"")
}

@(test)
keyboard_friendly_name_FiveSharp :: proc(t: ^testing.T) {
	five_sharp := sp__scale_degree.ScaleDegree.FiveSharp

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(five_sharp)^ == "5s", "ScaleDegree.FiveSharp's keyboard_friendly_name failed to equal \"5s\"")
}

@(test)
keyboard_friendly_name_SixFlat :: proc(t: ^testing.T) {
	six_flat := sp__scale_degree.ScaleDegree.SixFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(six_flat)^ == "6b", "ScaleDegree.SixFlat's keyboard_friendly_name failed to equal \"6b\"")
}

@(test)
keyboard_friendly_name_Six :: proc(t: ^testing.T) {
	six := sp__scale_degree.ScaleDegree.Six

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(six)^ == "6", "ScaleDegree.Six's keyboard_friendly_name failed to equal \"6\"")
}

@(test)
keyboard_friendly_name_SevenFlat :: proc(t: ^testing.T) {
	seven_flat := sp__scale_degree.ScaleDegree.SevenFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(seven_flat)^ == "7b", "ScaleDegree.SevenFlat's keyboard_friendly_name failed to equal \"7b\"")
}

@(test)
keyboard_friendly_name_Seven :: proc(t: ^testing.T) {
	seven := sp__scale_degree.ScaleDegree.Seven

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(seven)^ == "7", "ScaleDegree.Seven's keyboard_friendly_name failed to equal \"7\"")
}

@(test)
keyboard_friendly_name_Eight :: proc(t: ^testing.T) {
	eight := sp__scale_degree.ScaleDegree.Eight

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(eight)^ == "8", "ScaleDegree.Eight's keyboard_friendly_name failed to equal \"8\"")
}

@(test)
keyboard_friendly_name_NineFlat :: proc(t: ^testing.T) {
	nine_flat := sp__scale_degree.ScaleDegree.NineFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(nine_flat)^ == "9b", "ScaleDegree.NineFlat's keyboard_friendly_name failed to equal \"9b\"")
}

@(test)
keyboard_friendly_name_Nine :: proc(t: ^testing.T) {
	nine := sp__scale_degree.ScaleDegree.Nine

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(nine)^ == "9", "ScaleDegree.Nine's keyboard_friendly_name failed to equal \"9\"")
}

@(test)
keyboard_friendly_name_NineSharp :: proc(t: ^testing.T) {
	nine_sharp := sp__scale_degree.ScaleDegree.NineSharp

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(nine_sharp)^ == "9s", "ScaleDegree.NineSharp's keyboard_friendly_name failed to equal \"9s\"")
}

@(test)
keyboard_friendly_name_Eleven :: proc(t: ^testing.T) {
	eleven := sp__scale_degree.ScaleDegree.Eleven

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(eleven)^ == "11", "ScaleDegree.Eleven's keyboard_friendly_name failed to equal \"11\"")
}

@(test)
keyboard_friendly_name_ElevenSharp :: proc(t: ^testing.T) {
	eleven_sharp := sp__scale_degree.ScaleDegree.ElevenSharp

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(eleven_sharp)^ == "11s", "ScaleDegree.ElevenSharp's keyboard_friendly_name failed to equal \"11s\"")
}

@(test)
keyboard_friendly_name_ThirteenFlat :: proc(t: ^testing.T) {
	thirteen_flat := sp__scale_degree.ScaleDegree.ThirteenFlat

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(thirteen_flat)^ == "13b", "ScaleDegree.ThirteenFlat's keyboard_friendly_name failed to equal \"13b\"")
}

@(test)
keyboard_friendly_name_Thirteen :: proc(t: ^testing.T) {
	thirteen := sp__scale_degree.ScaleDegree.Thirteen

	testing.expect(t, sp__scale_degree.keyboard_friendly_name(thirteen)^ == "13", "ScaleDegree.Thirteen's keyboard_friendly_name failed to equal \"13\"")
}
// END - Keyboard Friendly Name Tests
