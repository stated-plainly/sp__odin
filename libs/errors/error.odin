package errors

import "base:runtime"
import "core:fmt"

Error :: struct {
	type: ErrorType,
	explanation: string,
	location: runtime.Source_Code_Location,
}

Error_new :: proc(type: ErrorType, explanation: string, location := #caller_location) -> Error {
	return Error{type, explanation, location}
}

Error_log :: proc(error: ^Error) {
	fmt.eprintfln("Error :: %s :: %s\n@%v", ErrorType_display_name(error^.type)^, error^.explanation, error^.location.file_path)
}
