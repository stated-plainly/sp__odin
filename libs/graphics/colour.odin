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

Colour__focal_point :: proc() -> Colour {
	return Colour__new(255, 193, 69)
}

Colour__verb :: proc() -> Colour {
	return Colour__new(206, 23, 136)
}

Colour__noun :: proc() -> Colour {
	return Colour__new(33, 52, 231)
}

Colour__good :: proc() -> Colour {
	return Colour__new(129, 206, 94)
}

Colour__bad :: proc() -> Colour {
	return Colour__new(236, 55, 55)
}
