package sp__error_tests

import "core:testing"

import "../../libs/sp__error"

// START - Display Name Tests
@(test)
test__ErrorType__display_name__InstantiationError :: proc(t: ^testing.T) {
	instantiation_error := sp__error.ErrorType.InstantiationError

	testing.expect(t, sp__error.ErrorType__display_name(instantiation_error) == "Instantiation", "ErrorType.InstantiationError's display_name != \"Instantiation\"")
}
// END - Display Name Tests
