package sp__error_type

ErrorType :: enum {
	InstantiationError
}

display_name :: proc(error_type: ErrorType) -> ^string {
	return &DISPLAY_NAME[int(error_type)]
}

@(rodata)
@(private="file")
DISPLAY_NAME := []string{
	"Instantiation",
}
