package errors_tests

import "core:testing"

import "../../errors"

@(test)
ErrorType_display_name_InstantiationError :: proc(t: ^testing.T) {
	instantiation_error := errors.ErrorType.InstantiationError

	testing.expect(t, errors.ErrorType_display_name(instantiation_error)^ == "Instantiation", "ErrorType.InstantiationError's display_name failed to equal \"Instantiation\"")
}
