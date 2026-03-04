package sp__cli

import "core:fmt"

@(private="file")
STYLE_F_STRING :: "\x1b[%dm%s\x1b[%dm"

@(private="file")
Style :: struct {
	set: int,
	reset: int,
}

@(private="file")
style :: proc(value: string, style: Style, allocator := context.allocator, deallocate_value := false) -> string {
	output := fmt.aprintf(STYLE_F_STRING, style.set, value, style.reset, allocator = allocator)

	if deallocate_value do delete(value, allocator = allocator)

	return output
}

@(private="file")
BOLD :: Style { 1, 22 }

bold :: proc(value: string, allocator := context.allocator, deallocate_value := false) -> string {
	return style(value, BOLD, allocator, deallocate_value)
}
