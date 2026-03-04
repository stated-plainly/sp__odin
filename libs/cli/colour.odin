package sp__cli

import "../graphics"

@(private="file")
COLOUR_F_STRING :: "\x1b[%d;2;%d;%d;%dm%s\x1b[%dm"

@(private="file")
FG_COLOUR_CODE :: 38

@(private="file")
BG_COLOUR_CODE :: 48

@(private="file")
COLOUR_RESET_CODE :: 39

colour :: proc(value: string, colour: graphics.Colour, allocator := context.allocator) -> string {
	return fmt.aprintf(COLOUR_F_STRING, FG_COLOUR_CODE, colour.r, colour.g, colour.b, value, COLOUR_RESET_CODE, allocator = allocator)
}

bg_colour :: proc(value: string, colour: graphics.Colour, allocator := context.allocator) -> string {
	return fmt.aprintf(COLOUR_F_STRING, BG_COLOUR_CODE, colour.r, colour.g, colour.b, value, COLOUR_RESET_CODE, allocator = allocator)
}
