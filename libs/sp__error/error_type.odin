package sp__error

ErrorType :: enum {
	InstantiationError
}

ErrorType__display_name :: proc(error_type: ErrorType) -> string {
	display_name: string

	switch error_type {
		case .InstantiationError:
			display_name = "Instantiation"
	}

	return display_name
}
