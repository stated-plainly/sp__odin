package sp__error

import "base:runtime"
import "core:fmt"

import "sp__error:sp__error_type"

Error :: struct {
	type: sp__error_type.ErrorType,
	explanation: string,
	location: runtime.Source_Code_Location,
}

new :: proc(type: sp__error_type.ErrorType, explanation: string, location := #caller_location) -> Error {
	return Error { type, explanation, location }
}

log :: proc(error: ^Error) {
	fmt.eprintfln("Error :: %s :: %s\n@%s", sp__error_type.display_name(error^.type)^, error^.explanation, error^.location.file_path)
}
