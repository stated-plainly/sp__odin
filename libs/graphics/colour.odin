package sp__graphics

Colour :: struct {
	r: u8,
	g: u8,
	b: u8,
	a: u8,
}

Colour__new :: proc(r: u8, g: u8, b: u8, a: u8 = 255) -> Colour {
	return Colour { r, g, b, a }
}
