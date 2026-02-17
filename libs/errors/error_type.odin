package errors

ErrorType :: enum {
	InstantiationError
}

@(rodata)
@(private="file")
ErrorType_DISPLAY_NAME := []string{
	"Instantiation",
}

ErrorType_display_name :: proc(error_type: ErrorType) -> ^string {
	return &ErrorType_DISPLAY_NAME[cast(int)error_type]
}
