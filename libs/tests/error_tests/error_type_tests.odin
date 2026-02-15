package error_tests

import "core:testing"
import "../../error"

// START - Display Name Tests
@(test)
ErrorType_display_name_InstantiationError :: proc(t: ^testing.T) {
	instantiation_error := error.ErrorType.InstantiationError;

	testing.expect(t, error.ErrorType_display_name(instantiation_error)^ == "Instantiation", "ErrorType.InstantiationError's display_name failed to equal \"Instantiation\"")
}
// END - Display Name Tests
