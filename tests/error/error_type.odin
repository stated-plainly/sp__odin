package sp__error_tests

import "core:testing"

import "../../libs/error"

// START - Display Name Tests
@(test)
test__ErrorType__display_name__InstantiationError :: proc(t: ^testing.T) {
	instantiation_error := error.ErrorType.InstantiationError

	testing.expect(t, error.ErrorType__display_name(instantiation_error) == "Instantiation")
}
// END - Display Name Tests
