package enums__build_option

from_string :: proc(value: string) -> (build_option: Self, succeeded: bool) {
	succeeded = true

	switch value {
		case "":
			build_option = .Default
		case "--lex":
			build_option = .Lex
		case "--parse":
			build_option = .Parse
		case "--codegen":
			build_option = .Codegen
		case:
			succeeded = false
	}

	return
}
