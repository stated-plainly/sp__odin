package music_tests

import "core:testing"
import "../../errors"
import "../../music"

// START - Instantiation Tests
	// START - F
		// START - F :: 1
		@(test)
		Note_new_one_FDoubleFlat :: proc(t: ^testing.T) {
			f_double_flat, error := music.Note_new(.F, .DoubleFlat, .One)

			testing.expect(t, f_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_FFlat :: proc(t: ^testing.T) {
			f_flat, error := music.Note_new(.F, .Flat, .One)

			testing.expect(t, f_flat.? == music.Note { .F, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_FNatural :: proc(t: ^testing.T) {
			f_natural, error := music.Note_new(.F, .Natural, .One)

			testing.expect(t, f_natural == music.Note { .F, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_FSharp :: proc(t: ^testing.T) {
			f_sharp, error := music.Note_new(.F, .Sharp, .One)

			testing.expect(t, f_sharp == music.Note { .F, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_FDoubleSharp :: proc(t: ^testing.T) {
			f_double_sharp, error := music.Note_new(.F, .DoubleSharp, .One)

			testing.expect(t, f_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_FTripleSharp :: proc(t: ^testing.T) {
			f_triple_sharp, error := music.Note_new(.F, .TripleSharp, .One)

			testing.expect(t, f_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - F :: 1
	// END - F
	// START - C
		// START - C :: 1
		@(test)
		Note_new_one_CDoubleFlat :: proc(t: ^testing.T) {
			c_double_flat, error := music.Note_new(.C, .DoubleFlat, .One)

			testing.expect(t, c_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_CFlat :: proc(t: ^testing.T) {
			c_flat, error := music.Note_new(.C, .Flat, .One)

			testing.expect(t, c_flat.? == music.Note { .C, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_CNatural :: proc(t: ^testing.T) {
			c_natural, error := music.Note_new(.C, .Natural, .One)

			testing.expect(t, c_natural == music.Note { .C, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_CSharp :: proc(t: ^testing.T) {
			c_sharp, error := music.Note_new(.C, .Sharp, .One)

			testing.expect(t, c_sharp == music.Note { .C, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_CDoubleSharp :: proc(t: ^testing.T) {
			c_double_sharp, error := music.Note_new(.C, .DoubleSharp, .One)

			testing.expect(t, c_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_CTripleSharp :: proc(t: ^testing.T) {
			c_triple_sharp, error := music.Note_new(.C, .TripleSharp, .One)

			testing.expect(t, c_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - C :: 1
	// START - G
		// START - G :: 1
		@(test)
		Note_new_one_GDoubleFlat :: proc(t: ^testing.T) {
			g_double_flat, error := music.Note_new(.G, .DoubleFlat, .One)

			testing.expect(t, g_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_GFlat :: proc(t: ^testing.T) {
			g_flat, error := music.Note_new(.G, .Flat, .One)

			testing.expect(t, g_flat.? == music.Note { .G, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_GNatural :: proc(t: ^testing.T) {
			g_natural, error := music.Note_new(.G, .Natural, .One)

			testing.expect(t, g_natural == music.Note { .G, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_GSharp :: proc(t: ^testing.T) {
			g_sharp, error := music.Note_new(.G, .Sharp, .One)

			testing.expect(t, g_sharp == music.Note { .G, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_GDoubleSharp :: proc(t: ^testing.T) {
			g_double_sharp, error := music.Note_new(.G, .DoubleSharp, .One)

			testing.expect(t, g_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_GTripleSharp :: proc(t: ^testing.T) {
			g_triple_sharp, error := music.Note_new(.G, .TripleSharp, .One)

			testing.expect(t, g_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - G :: 1
	// END - G
	// START - D
		// START - D :: 1
		@(test)
		Note_new_one_DDoubleFlat :: proc(t: ^testing.T) {
			d_double_flat, error := music.Note_new(.D, .DoubleFlat, .One)

			testing.expect(t, d_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_DFlat :: proc(t: ^testing.T) {
			d_flat, error := music.Note_new(.D, .Flat, .One)

			testing.expect(t, d_flat.? == music.Note { .D, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_DNatural :: proc(t: ^testing.T) {
			d_natural, error := music.Note_new(.D, .Natural, .One)

			testing.expect(t, d_natural == music.Note { .D, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_DSharp :: proc(t: ^testing.T) {
			d_sharp, error := music.Note_new(.D, .Sharp, .One)

			testing.expect(t, d_sharp == music.Note { .D, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_DDoubleSharp :: proc(t: ^testing.T) {
			d_double_sharp, error := music.Note_new(.D, .DoubleSharp, .One)

			testing.expect(t, d_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_DTripleSharp :: proc(t: ^testing.T) {
			d_triple_sharp, error := music.Note_new(.D, .TripleSharp, .One)

			testing.expect(t, d_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - D :: 1
	// END - D
	// START - A
		// START - A :: 1
		@(test)
		Note_new_one_ADoubleFlat :: proc(t: ^testing.T) {
			a_double_flat, error := music.Note_new(.A, .DoubleFlat, .One)

			testing.expect(t, a_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_AFlat :: proc(t: ^testing.T) {
			a_flat, error := music.Note_new(.A, .Flat, .One)

			testing.expect(t, a_flat.? == music.Note { .A, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_ANatural :: proc(t: ^testing.T) {
			a_natural, error := music.Note_new(.A, .Natural, .One)

			testing.expect(t, a_natural == music.Note { .A, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_ASharp :: proc(t: ^testing.T) {
			a_sharp, error := music.Note_new(.A, .Sharp, .One)

			testing.expect(t, a_sharp == music.Note { .A, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_ADoubleSharp :: proc(t: ^testing.T) {
			a_double_sharp, error := music.Note_new(.A, .DoubleSharp, .One)

			testing.expect(t, a_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_ATripleSharp :: proc(t: ^testing.T) {
			a_triple_sharp, error := music.Note_new(.A, .TripleSharp, .One)

			testing.expect(t, a_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - A :: 1
	// END - A
	// START - E
		// START - E :: 1
		@(test)
		Note_new_one_EDoubleFlat :: proc(t: ^testing.T) {
			e_double_flat, error := music.Note_new(.E, .DoubleFlat, .One)

			testing.expect(t, e_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_EFlat :: proc(t: ^testing.T) {
			e_flat, error := music.Note_new(.E, .Flat, .One)

			testing.expect(t, e_flat.? == music.Note { .E, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_ENatural :: proc(t: ^testing.T) {
			e_natural, error := music.Note_new(.E, .Natural, .One)

			testing.expect(t, e_natural == music.Note { .E, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_ESharp :: proc(t: ^testing.T) {
			e_sharp, error := music.Note_new(.E, .Sharp, .One)

			testing.expect(t, e_sharp == music.Note { .E, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_EDoubleSharp :: proc(t: ^testing.T) {
			e_double_sharp, error := music.Note_new(.E, .DoubleSharp, .One)

			testing.expect(t, e_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_ETripleSharp :: proc(t: ^testing.T) {
			e_triple_sharp, error := music.Note_new(.E, .TripleSharp, .One)

			testing.expect(t, e_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - E :: 1
	// END - E
	// START - B
		// START - B :: 1
		@(test)
		Note_new_one_BDoubleFlat :: proc(t: ^testing.T) {
			b_double_flat, error := music.Note_new(.B, .DoubleFlat, .One)

			testing.expect(t, b_double_flat == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_BFlat :: proc(t: ^testing.T) {
			b_flat, error := music.Note_new(.B, .Flat, .One)

			testing.expect(t, b_flat.? == music.Note { .B, .Flat, .One } && error == nil)
		}

		@(test)
		Note_new_one_BNatural :: proc(t: ^testing.T) {
			b_natural, error := music.Note_new(.B, .Natural, .One)

			testing.expect(t, b_natural == music.Note { .B, .Natural, .One } && error == nil)
		}

		@(test)
		Note_new_one_BSharp :: proc(t: ^testing.T) {
			b_sharp, error := music.Note_new(.B, .Sharp, .One)

			testing.expect(t, b_sharp == music.Note { .B, .Sharp, .One } && error == nil)
		}

		@(test)
		Note_new_one_BDoubleSharp :: proc(t: ^testing.T) {
			b_double_sharp, error := music.Note_new(.B, .DoubleSharp, .One)

			testing.expect(t, b_double_sharp == nil && error.?.type == .InstantiationError)
		}

		@(test)
		Note_new_one_BTripleSharp :: proc(t: ^testing.T) {
			b_triple_sharp, error := music.Note_new(.B, .TripleSharp, .One)

			testing.expect(t, b_triple_sharp == nil && error.?.type == .InstantiationError)
		}
		// END - B :: 1
	// END - B
// START - Instantiation Tests
