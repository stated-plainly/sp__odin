package sp__error

import "base:runtime"
import "core:fmt"

Error :: struct {
	type: ErrorType,
	explanation: string,
	location: runtime.Source_Code_Location,
}

Error__new :: proc(type: ErrorType, explanation: string, location := #caller_location) -> Error {
	return Error { type, explanation, location }
}

Error__log :: proc(error: Error) {
	fmt.eprintfln("Error :: %s :: %s\n@%s", ErrorType__display_name(error.type), error.explanation, error.location.file_path)
}
